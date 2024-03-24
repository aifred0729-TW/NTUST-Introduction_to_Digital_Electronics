#!/bin/bash
echo "==================================================="
echo "Starting Auto NGSPICE Installation Progress..."
echo "NTUST CSIE | Mu Yuan Hsu / Red Meow"
echo "==================================================="

sudo -l 1>/dev/null 2>/dev/null

# Install Dependencies

echo ""
echo "Install Dependencies"
echo ""
echo "==================================================="

echo -n "Updateing Source List......"
sudo apt update 1>/dev/null 2>/dev/null
echo "Done"


echo -n "Install libtool......"
sudo apt install libtool -y 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Install bison......"
sudo apt install bison -y 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Install libreadline6-dev......"
sudo apt install libreadline6-dev -y 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Install libxml-libxml-perl......"
sudo apt-get install libxml-libxml-perl -y 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Install libxaw7-dev......"
sudo apt-get install libxaw7-dev -y 1>/dev/null 2>/dev/null
echo "Done"

echo "==================================================="
echo ""
echo "All Dependencies are Installed."
echo ""
echo "==================================================="

# Get Sources

echo -n "Try to Get ngspice-42.tar.gz....."
wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/42/ngspice-42.tar.gz 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Extract ngspice-42.tar.gz....."
tar zxvf ngspice-42.tar.gz 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Download ADMS....."
git clone https://github.com/Qucs/ADMS.git 1>/dev/null 2>/dev/null
echo "Done"

echo "==================================================="
echo ""
echo "All Sources are Downloaded."
echo ""
echo "==================================================="

# Install ADMS

echo ""
echo "Starting Install ADMS"
echo ""
echo "==================================================="

cd ADMS

echo -n "Execut bootstrap.sh....."
sh bootstrap.sh 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Configure Installation....."
./configure 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Try to Compile ADMS....."
make 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Make Install....."
sudo make install 1>/dev/null 2>/dev/null
echo "Done"

cd ..

echo "==================================================="
echo ""
echo "ADMS Installation Complete."
echo ""
echo "==================================================="

# Install NGSPICE

echo ""
echo "Install NGSPICE"
echo ""
echo "==================================================="

cd ngspice-42

echo -n "Generate Depend Requires....."
./autogen.sh 1>/dev/null 2>/dev/null
echo "Done"

echo -n "Compile NEGSPICE and Install....."
sudo ./compile_linux.sh 1>/dev/null 2>/dev/null
echo "Done"

echo "==================================================="
echo ""
echo "NGSPICE Installation Complete."
echo ""
echo "==================================================="