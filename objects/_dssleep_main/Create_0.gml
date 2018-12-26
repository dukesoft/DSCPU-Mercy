var libname = undefined;
if (os_type == os_linux) {
	libname = "DSSleep.so";
}
if (os_type == os_windows) {
	libname = "DSSleep.dll";
}

if (is_undefined(libname)) {
	show_error("DSSleep is not supported on this platform.", true);
	return false;
}

__nanoseconds = external_define(libname, "sleep_nanoseconds", dll_cdecl, ty_real, 1, ty_real);
__microseconds = external_define(libname, "sleep_microseconds", dll_cdecl, ty_real, 1, ty_real);
__milliseconds = external_define(libname, "sleep_milliseconds", dll_cdecl, ty_real, 1, ty_real);
__seconds = external_define(libname, "sleep_seconds", dll_cdecl, ty_real, 1, ty_real);
__minutes = external_define(libname, "sleep_minutes", dll_cdecl, ty_real, 1, ty_real);