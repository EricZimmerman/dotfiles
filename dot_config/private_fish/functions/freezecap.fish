function freezecap
    set ts (date +%F-%H%M)
    set pid (pidof kwin_wayland | string split ' ')[-1]
    begin
        echo "== kernel =="; journalctl -b -k --no-pager | grep -iE 'nvidia|nvrm|xid|drm' | tail -50
        echo "== kwin =="; journalctl --user -b --no-pager -t kwin_wayland | tail -100
        echo "== kwin cpu =="; top -b -n1 | grep -i kwin
        echo "== wchan =="; cat /proc/$pid/wchan; echo
        echo "== nvidia-smi =="; timeout 10 nvidia-smi
    end > ~/freeze-$ts.log 2>&1
    sudo gdb -batch -ex "thread apply all bt" -p $pid > ~/kwin-hang-$ts.txt 2>&1
    echo "saved ~/freeze-$ts.log and ~/kwin-hang-$ts.txt"
end
