PERL_HOME=/c/Perl/

basepath=$(cd `dirname $0`; pwd)
echo ${basepath}

if [ ! -d ./openssl-1.1.1k_build ];then
    cp -r openssl-1.1.1k openssl-1.1.1k_build
fi

cd ${basepath}/openssl-1.1.1k_build

${PERL_HOME}/perl/bin/perl.exe Configure \
VC-WIN64A \
--prefix=${basepath}/openssl_install/ \
--openssldir==${basepath}/openssl-1.1.1k_build/ \
no-shared \
no-asm

nmake
nmake install