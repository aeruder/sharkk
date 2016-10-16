#include <libudev.h>
#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <unistd.h>

int main (void)
{
    struct udev *udev;
    struct udev_enumerate *enumerate;
    struct udev_list_entry *devices, *dev_list_entry, *attrs, *attr_list_entry;
    struct udev_device *tdev, *dev;
    const char *attr;

    /* Create the udev object */
    udev = udev_new();
    if (!udev) {
        printf("Can't create udev\n");
        exit(1);
    }

    /* Create a list of the devices in the 'hidraw' subsystem. */
    enumerate = udev_enumerate_new(udev);
    udev_enumerate_add_match_subsystem(enumerate, "hidraw");
    udev_enumerate_scan_devices(enumerate);
    devices = udev_enumerate_get_list_entry(enumerate);
    /* For each item enumerated, print out its information.
       udev_list_entry_foreach is a macro which expands to
       a loop. The loop will be executed for each member in
       devices, setting dev_list_entry to a list entry
       which contains the device's path in /sys. */
    udev_list_entry_foreach(dev_list_entry, devices) {
        const char *path;

        /* Get the filename of the /sys entry for the device
           and create a udev_device object (dev) representing it */
        path = udev_list_entry_get_name(dev_list_entry);
        tdev = udev_device_new_from_syspath(udev, path);

        /* usb_device_get_devnode() returns the path to the device node
           itself in /dev. */
        printf("Device Node Path: %s\n", udev_device_get_devnode(tdev));
        dev = tdev;
        do {
            printf("Syspath: %s\n", udev_device_get_syspath(dev));
            printf("   Devtype: %s\n", udev_device_get_devtype(dev));
            printf("   Subsystem: %s\n", udev_device_get_subsystem(dev));
            printf("   Attributes:\n");
            attrs = udev_device_get_sysattr_list_entry(dev);
            udev_list_entry_foreach(attr_list_entry, attrs) {
                attr = udev_list_entry_get_name(attr_list_entry);
                printf("     %s: %s\n", attr, udev_device_get_sysattr_value(dev, attr));
            }
            dev = udev_device_get_parent(dev);
        } while (dev != NULL);
        udev_device_unref(tdev);
    }
    /* Free the enumerator object */
    udev_enumerate_unref(enumerate);

    udev_unref(udev);

    return 0;
}
