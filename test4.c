#include <linux/hidraw.h>
#include <linux/ioctl.h>
#include <stdio.h>

int main(void)
{
    printf("%08x %08x\n", HIDIOCSFEATURE(0), HIDIOCSFEATURE(256));
    printf("%08x %08x\n", HIDIOCGFEATURE(0), HIDIOCGFEATURE(256));
return 0;
}
