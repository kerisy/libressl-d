/*
 * Public domain
 * machine/endian.h compatibility shim
 */
module libressl_d.compat.machine.endian;


version (Windows) {
	enum LITTLE_ENDIAN = 1234;
	enum BIG_ENDIAN = 4321;
	enum PDP_ENDIAN = 3412;

	/*
	 * Use GCC and Visual Studio compiler defines to determine endian.
	 */
	version (LittleEndian) {
		enum BYTE_ORDER = .LITTLE_ENDIAN;
	} else {
		enum BYTE_ORDER = .BIG_ENDIAN;
	}
} else version (linux) {
//	#include <endian.h>
//#elif defined(__sun) || defined(_AIX) || defined(__hpux)
//	public import core.sys.posix.arpa.nameser_compat;
//	public import libressl_d.compat.sys.types;
//#elif defined(__sgi)
//	#include <standards.h>
//	public import core.sys.posix.sys.endian;
} else {
//	public import core.sys.posix.machine.endian;
}
