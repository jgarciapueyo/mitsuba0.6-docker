cd /home/mitsuba
cp build/config-linux-gcc.py config.py
python2.7 `which scons` -j$(nproc)
source setpath.sh