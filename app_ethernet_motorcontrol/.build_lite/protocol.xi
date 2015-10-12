# 1 "../src/protocol.xc"
# 10 "../src/protocol.xc"
# 1 "ethernet_hub_client.h" 1
# 13 "ethernet_hub_client.h"
void passFrameToHub(chanend c, const unsigned char buffer[], int nbytes);
# 17 "ethernet_hub_client.h"
#pragma select handler
# 39 "ethernet_hub_client.h"
void fetchFrameFromHub(chanend c, unsigned buffer[], int &nbytes);
# 11 "../src/protocol.xc" 2
# 1 "mac_filters.h" 1
# 3 "mac_filters.h"
unsigned isBroadcast(char data[]);
unsigned isForMe(char data[], const unsigned char mac[]);

unsigned isARP(char data[]);
unsigned isIPV4(char data[]);
unsigned isIPV6(char data[]);
unsigned isSNCN(char data[]);
# 12 "../src/protocol.xc" 2
# 1 "print.h" 1 3
# 34 "print.h" 3
int printchar(char value);
# 40 "print.h" 3
int printcharln(char value);
# 46 "print.h" 3
int printint(int value);
# 52 "print.h" 3
int printintln(int value);
# 58 "print.h" 3
int printuint(unsigned value);
# 64 "print.h" 3
int printuintln(unsigned value);
# 70 "print.h" 3
int printllong(long long value);
# 76 "print.h" 3
int printllongln(long long value);
# 82 "print.h" 3
int printullong(unsigned long long value);
# 88 "print.h" 3
int printullongln(unsigned long long value);
# 95 "print.h" 3
int printhex(unsigned value);
# 102 "print.h" 3
int printhexln(unsigned value);
# 109 "print.h" 3
int printllonghex(unsigned long long value);
# 116 "print.h" 3
int printllonghexln(unsigned long long value);
# 123 "print.h" 3
int printstr(const char (& alias s)[]);
# 133 "print.h" 3
int printstrln(const char (& alias s)[]);
# 13 "../src/protocol.xc" 2
# 1 "inttypes.h" 1 3
# 4 "inttypes.h" 3
# 1 "inttypes.h" 1 3
# 16 "inttypes.h" 3
# 1 "_ansi.h" 1 3
# 15 "_ansi.h" 3
# 1 "newlib.h" 1 3
# 16 "_ansi.h" 2 3
# 1 "sys/config.h" 1 3
# 4 "sys/config.h" 3
# 1 "machine/ieeefp.h" 1 3
# 5 "sys/config.h" 2 3
# 17 "_ansi.h" 2 3
# 17 "inttypes.h" 2 3
# 1 "stdint.h" 1 3
# 17 "stdint.h" 3
extern "C" {
# 27 "stdint.h" 3
# 1 "limits.h" 1 3
# 4 "limits.h" 3
# 1 "newlib.h" 1 3
# 5 "limits.h" 2 3
# 24 "limits.h" 3
# 1 "sys/config.h" 1 3
# 25 "limits.h" 2 3
# 28 "stdint.h" 2 3
# 45 "stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 71 "stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 83 "stdint.h" 3
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 101 "stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 123 "stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 133 "stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 163 "stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 217 "stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;









  typedef signed long long intmax_t;
# 237 "stdint.h" 3
  typedef unsigned long long uintmax_t;
# 247 "stdint.h" 3
typedef signed  int  intptr_t;
typedef unsigned  int  uintptr_t;
# 421 "stdint.h" 3
}
# 18 "inttypes.h" 2 3
# 19 "inttypes.h" 3
# 1 "stddef.h" 1 3
# 326 "stddef.h" 3
typedef  unsigned char  wchar_t;
# 20 "inttypes.h" 2 3
# 296 "inttypes.h" 3
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;


extern "C" {


extern intmax_t imaxabs(intmax_t j);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *  restrict , char **  restrict , int);
extern uintmax_t strtoumax(const char *  restrict , char **  restrict , int);
# 315 "inttypes.h" 3
}
# 5 "inttypes.h" 2 3
# 1 "safe/inttypes.h" 1 3
# 4 "safe/inttypes.h" 3
# 1 "inttypes.h" 1 3
# 5 "safe/inttypes.h" 2 3


extern intmax_t _safe_strtoimax(const char nptr[], char * unsafe (&?endptr)[1], int base);
extern uintmax_t _safe_strtoumax(const char nptr[], char * unsafe (&?endptr)[1], int base);
# 6 "inttypes.h" 2 3
# 14 "../src/protocol.xc" 2
# 1 "stdio.h" 1 3
# 4 "stdio.h" 3
# 1 "stdio.h" 1 3
# 29 "stdio.h" 3
# 1 "_ansi.h" 1 3
# 30 "stdio.h" 2 3
# 34 "stdio.h" 3
# 1 "stddef.h" 1 3
# 214 "stddef.h" 3
typedef  unsigned int  size_t;
# 35 "stdio.h" 2 3
# 37 "stdio.h" 3
# 1 "stdarg.h" 1 3
# 38 "stdio.h" 2 3
# 45 "stdio.h" 3
# 1 "sys/reent.h" 1 3
# 9 "sys/reent.h" 3
extern "C" {
# 13 "sys/reent.h" 3
# 1 "_ansi.h" 1 3
# 14 "sys/reent.h" 2 3
# 1 "sys/_types.h" 1 3
# 12 "sys/_types.h" 3
# 1 "machine/_types.h" 1 3
# 7 "machine/_types.h" 3
# 1 "machine/_default_types.h" 1 3
# 9 "machine/_default_types.h" 3
extern "C" {
# 22 "machine/_default_types.h" 3
# 1 "limits.h" 1 3
# 23 "machine/_default_types.h" 2 3



typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;








typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 118 "machine/_default_types.h" 3
}
# 8 "machine/_types.h" 2 3
# 13 "sys/_types.h" 2 3
# 1 "sys/lock.h" 1 3




extern "C" {


typedef int _LOCK_SIMPLE_T;

typedef struct {

  unsigned _counter;


  unsigned _owner;
} _LOCK_FAIR_T;

typedef struct {
  int _owner;
  int _count;
} _LOCK_RECURSIVE_T;








void __lock_simple_init(volatile _LOCK_SIMPLE_T *);
void __lock_simple_close(volatile _LOCK_SIMPLE_T *);
void __lock_simple_acquire(volatile _LOCK_SIMPLE_T *);
int __lock_simple_try_acquire(volatile _LOCK_SIMPLE_T *);
void __lock_simple_release(volatile _LOCK_SIMPLE_T *);

void __lock_fair_init(volatile _LOCK_FAIR_T *);
void __lock_fair_close(volatile _LOCK_FAIR_T *);
void __lock_fair_acquire(volatile _LOCK_FAIR_T *);
int __lock_fair_try_acquire(volatile _LOCK_FAIR_T *);
void __lock_fair_release(volatile _LOCK_FAIR_T *);

void __lock_recursive_init(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_close(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_acquire(volatile _LOCK_RECURSIVE_T *);
int __lock_recursive_try_acquire(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_release(volatile _LOCK_RECURSIVE_T *);

typedef _LOCK_FAIR_T _LOCK_T;
# 68 "sys/lock.h" 3
};
# 14 "sys/_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;
# 45 "sys/_types.h" 3
typedef long _fpos_t;
# 57 "sys/_types.h" 3
typedef int _ssize_t;
# 64 "sys/_types.h" 3
# 1 "stddef.h" 1 3
# 355 "stddef.h" 3
typedef  unsigned int  wint_t;
# 65 "sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "sys/reent.h" 2 3






typedef unsigned  long  __ULong;
# 36 "sys/reent.h" 3
struct _reent;
# 45 "sys/reent.h" 3
struct __sbuf {
	unsigned char *_base;
	int _size;
};
# 76 "sys/reent.h" 3
struct __sFILE;
# 172 "sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 189 "sys/reent.h" 3
struct _reent;

extern  void   _cleanup ( void ) ;

extern __FILE *__stdin, *__stdout, *__stderr;

__FILE *  __getstdin (void) ;
__FILE *  __getstdout (void) ;
__FILE *  __getstderr (void) ;



}
# 46 "stdio.h" 2 3
# 47 "stdio.h" 3
# 1 "sys/types.h" 1 3
# 20 "sys/types.h" 3
# 1 "_ansi.h" 1 3
# 21 "sys/types.h" 2 3
# 25 "sys/types.h" 3
# 1 "machine/_types.h" 1 3
# 26 "sys/types.h" 2 3


extern "C" {
# 65 "sys/types.h" 3
# 1 "sys/_types.h" 1 3
# 66 "sys/types.h" 2 3
# 73 "sys/types.h" 3
# 1 "stddef.h" 1 3
# 152 "stddef.h" 3
typedef  int  ptrdiff_t;
# 74 "sys/types.h" 2 3
# 1 "machine/types.h" 1 3
# 19 "machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;



typedef long int __loff_t;
# 75 "sys/types.h" 2 3
# 96 "sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef  unsigned long  clock_t;




typedef  long  time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;
# 137 "sys/types.h" 3
typedef unsigned short ino_t;
# 166 "sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;


typedef int pid_t;

typedef long key_t;

typedef _ssize_t ssize_t;
# 190 "sys/types.h" 3
typedef unsigned int mode_t  ;




typedef unsigned short nlink_t;
# 217 "sys/types.h" 3
typedef long fd_mask;
# 225 "sys/types.h" 3
typedef struct _types_fd_set {
	fd_mask fds_bits[ ((( 64 )+(( (sizeof (fd_mask) * 8 ) )-1))/( (sizeof (fd_mask) * 8 ) )) ];
} _types_fd_set;
# 248 "sys/types.h" 3
typedef  unsigned long  clockid_t;




typedef  unsigned long  timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 260 "sys/types.h" 3
# 1 "sys/features.h" 1 3
# 25 "sys/features.h" 3
extern "C" {
# 178 "sys/features.h" 3
}
# 261 "sys/types.h" 2 3
# 406 "sys/types.h" 3
}
# 48 "stdio.h" 2 3

extern "C" {

typedef __FILE FILE;








typedef _fpos_t fpos_t;
# 66 "stdio.h" 3
# 1 "sys/stdio.h" 1 3
# 4 "sys/stdio.h" 3
# 1 "sys/lock.h" 1 3
# 5 "sys/stdio.h" 2 3
# 1 "sys/reent.h" 1 3
# 6 "sys/stdio.h" 2 3
# 67 "stdio.h" 2 3
# 161 "stdio.h" 3
FILE *  tmpfile (void) ;
char *  tmpnam (char *) ;
int  fclose (FILE *) ;
int  fflush (FILE *) ;
FILE *  freopen (const char *, const char *, FILE *) ;
# 170 "stdio.h" 3
int  fprintf (FILE *, const char *, ...) ;
# 172 "stdio.h" 3
int  fscanf (FILE *, const char *, ...) ;
# 174 "stdio.h" 3
int  printf (const char *, ...) ;
# 176 "stdio.h" 3
int  scanf (const char *, ...) ;
# 178 "stdio.h" 3
int  sscanf (const char *, const char *, ...) ;
# 180 "stdio.h" 3
int  vfprintf (FILE *, const char *, char* ) ;
# 182 "stdio.h" 3
int  vprintf (const char *, char* ) ;
# 184 "stdio.h" 3
int  vsprintf (char *, const char *, char* ) ;
# 186 "stdio.h" 3
int  fgetc (FILE *) ;
char *  fgets (char *, int, FILE *) ;
int  fputc (int, FILE *) ;
int  fputs (const char *, FILE *) ;
int  getc (FILE *) ;
int  getchar (void) ;
char *  gets (char *) ;
int  putc (int, FILE *) ;
int  putchar (int) ;
int  puts (const char *) ;
int  ungetc (int, FILE *) ;
size_t  fread ( void * , size_t _size, size_t _n, FILE *) ;
size_t  fwrite (const void * , size_t _size, size_t _n, FILE *) ;



int  fgetpos (FILE *, fpos_t *) ;

int  fseek (FILE *, long, int) ;



int  fsetpos (FILE *, const fpos_t *) ;

long  ftell ( FILE *) ;
void  rewind (FILE *) ;
void  clearerr (FILE *) ;
int  feof (FILE *) ;
int  ferror (FILE *) ;
void  perror (const char *) ;
FILE *  fopen (const char *_name, const char *_type) ;
int  sprintf (char *, const char *, ...) ;
# 219 "stdio.h" 3
int  remove (const char *) ;
int  rename (const char *, const char *) ;





int  fseeko (FILE *, off_t, int) ;
off_t  ftello ( FILE *) ;

int  asiprintf (char **, const char *, ...) ;
# 231 "stdio.h" 3
char *  asniprintf (char *, size_t *, const char *, ...) ;
# 233 "stdio.h" 3
char *  asnprintf (char *, size_t *, const char *, ...) ;
# 235 "stdio.h" 3
int  asprintf (char **, const char *, ...) ;
# 238 "stdio.h" 3
int  diprintf (int, const char *, ...) ;
# 241 "stdio.h" 3
int  fcloseall ( void ) ;
int  fiprintf (FILE *, const char *, ...) ;
# 244 "stdio.h" 3
int  fiscanf (FILE *, const char *, ...) ;
# 246 "stdio.h" 3
int  iprintf (const char *, ...) ;
# 248 "stdio.h" 3
int  iscanf (const char *, ...) ;
# 250 "stdio.h" 3
int  siprintf (char *, const char *, ...) ;
# 252 "stdio.h" 3
int  siscanf (const char *, const char *, ...) ;
# 254 "stdio.h" 3
int  snprintf (char *, size_t, const char *, ...) ;
# 256 "stdio.h" 3
int  sniprintf (char *, size_t, const char *, ...) ;
# 258 "stdio.h" 3
char *  tempnam (const char *, const char *) ;
int  vasiprintf (char **, const char *, char* ) ;
# 261 "stdio.h" 3
char *  vasniprintf (char *, size_t *, const char *, char* ) ;
# 263 "stdio.h" 3
char *  vasnprintf (char *, size_t *, const char *, char* ) ;
# 265 "stdio.h" 3
int  vasprintf (char **, const char *, char* ) ;
# 267 "stdio.h" 3
int  vdiprintf (int, const char *, char* ) ;
# 269 "stdio.h" 3
int  vfiprintf (FILE *, const char *, char* ) ;
# 271 "stdio.h" 3
int  vfiscanf (FILE *, const char *, char* ) ;
# 273 "stdio.h" 3
int  vfscanf (FILE *, const char *, char* ) ;
# 275 "stdio.h" 3
int  viprintf (const char *, char* ) ;
# 277 "stdio.h" 3
int  viscanf (const char *, char* ) ;
# 279 "stdio.h" 3
int  vscanf (const char *, char* ) ;
# 281 "stdio.h" 3
int  vsiprintf (char *, const char *, char* ) ;
# 283 "stdio.h" 3
int  vsiscanf (const char *, const char *, char* ) ;
# 285 "stdio.h" 3
int  vsniprintf (char *, size_t, const char *, char* ) ;
# 287 "stdio.h" 3
int  vsnprintf (char *, size_t, const char *, char* ) ;
# 289 "stdio.h" 3
int  vsscanf (const char *, const char *, char* ) ;
# 298 "stdio.h" 3
FILE *  fdopen (int, const char *) ;
int  fileno (FILE *) ;
int  getw (FILE *) ;
int  pclose (FILE *) ;
FILE *  popen (const char *, const char *) ;
int  putw (int, FILE *) ;
void  setbuffer (FILE *, char *, int) ;
int  setlinebuf (FILE *) ;
int  getc_unlocked (FILE *) ;
int  getchar_unlocked (void) ;
void  flockfile (FILE *) ;
int  ftrylockfile (FILE *) ;
void  funlockfile (FILE *) ;
int  putc_unlocked (int, FILE *) ;
int  putchar_unlocked (int) ;
# 321 "stdio.h" 3
int  dprintf (int, const char *, ...) ;
# 324 "stdio.h" 3
FILE *  fmemopen (void *, size_t, const char *) ;


FILE *  open_memstream (char **, size_t *) ;
# 332 "stdio.h" 3
int  vdprintf (int, const char *, char* ) ;
# 340 "stdio.h" 3
int  _fflush (FILE *) ;
char *  _fgets_r (struct _reent *, char *, int, FILE *) ;
int  _fiscanf_r (struct _reent *, FILE *, const char *, ...) ;
# 344 "stdio.h" 3
int  _fputc_r (struct _reent *, int, FILE *) ;
int  _fputs_r (struct _reent *, const char *, FILE *) ;
int  _fscanf_r (struct _reent *, FILE *, const char *, ...) ;
# 348 "stdio.h" 3
long  _ftell_r (struct _reent *, FILE *) ;
size_t  _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *) ;
int  _getc_r (struct _reent *, FILE *) ;
int  _getchar_r (struct _reent *) ;
char *  _gets_r (struct _reent *, char *) ;
int  _iscanf_r (struct _reent *, const char *, ...) ;
# 355 "stdio.h" 3
int  _mkstemp_r (struct _reent *, char *) ;
char *  _mktemp_r (struct _reent *, char *) ;
void  _perror_r (struct _reent *, const char *) ;
int  _putc_r (struct _reent *, int, FILE *) ;
int  _putchar_unlocked_r (struct _reent *, int) ;
int  _putchar_r (struct _reent *, int) ;
int  _remove_r (struct _reent *, const char *) ;
int  _rename_r (struct _reent *, const char *_old, const char *_new) ;
# 364 "stdio.h" 3
int  _scanf_r (struct _reent *, const char *, ...) ;
# 366 "stdio.h" 3
int  _siscanf_r (struct _reent *, const char *, const char *, ...) ;
# 368 "stdio.h" 3
int  _sscanf_r (struct _reent *, const char *, const char *, ...) ;
# 370 "stdio.h" 3
int  _ungetc_r (struct _reent *, int, FILE *) ;
int  _vfiscanf_r (struct _reent *, FILE *, const char *, char* ) ;
# 373 "stdio.h" 3
int  _vfscanf_r (struct _reent *, FILE *, const char *, char* ) ;
# 375 "stdio.h" 3
int  _viscanf_r (struct _reent *, const char *, char* ) ;
# 377 "stdio.h" 3
int  _vscanf_r (struct _reent *, const char *, char* ) ;
# 379 "stdio.h" 3
int  _vsiscanf_r (struct _reent *, const char *, const char *, char* ) ;
# 381 "stdio.h" 3
int  _vsscanf_r (struct _reent *, const char *, const char *, char* ) ;
# 384 "stdio.h" 3
ssize_t  __getdelim (char **, size_t *, int, FILE *) ;
ssize_t  __getline (char **, size_t *, FILE *) ;
# 411 "stdio.h" 3
int  __srget (FILE *) ;
int  __swbuf (int, FILE *) ;
# 590 "stdio.h" 3
}
# 5 "stdio.h" 2 3
# 1 "safe/stdio.h" 1 3
# 4 "safe/stdio.h" 3
# 1 "stdio.h" 1 3
# 5 "safe/stdio.h" 2 3


FILE * movable _safe_tmpfile(void);
char * alias _safe_tmpnam(char (&?s)[]);
FILE * movable _safe_freopen(const char path[], const char mode[], FILE * movable fp);
char * alias _safe_fgets(char * alias s, int size, FILE * fp);
int _safe_fputs(const char s[], FILE * fp);
char * alias _safe_gets(char * alias s);
int _safe_puts(const char s[]);
size_t _safe_fread(char ptr[size], size_t size, size_t n, FILE * fp);
size_t _safe_fwrite(const char ptr[size], size_t size, size_t n, FILE * fp);
int _safe_fgetpos(FILE * fp, fpos_t pos[1]);
int _safe_fsetpos(FILE * fp, const fpos_t pos[1]);
void _safe_perror(const char s[]);
FILE * movable _safe_fopen(const char name[], const char type[]);
int _safe_fclose(FILE * movable fp);
int _safe_remove(const char file[]);
int _safe_rename(const char from[], const char to[]);
# 6 "stdio.h" 2 3
# 15 "../src/protocol.xc" 2
# 1 "string.h" 1 3
# 4 "string.h" 3
# 1 "string.h" 1 3
# 10 "string.h" 3
# 1 "_ansi.h" 1 3
# 11 "string.h" 2 3
# 12 "string.h" 3
# 1 "sys/reent.h" 1 3
# 13 "string.h" 2 3
# 15 "string.h" 3
# 1 "stddef.h" 1 3
# 16 "string.h" 2 3
# 21 "string.h" 3
extern "C" {

void *   memchr (const void * , int, size_t) ;
int  memcmp (const void * , const void * , size_t) ;
void *   memcpy ( void * , const void * , size_t) ;
void *   memmove ( void * , const void * , size_t) ;
void *   memset ( void * , int, size_t) ;
char * strcat (char *, const char *) ;
char * strchr (const char *, int) ;
int  strcmp (const char *__s1, const char *__s2) ;
# 34 "string.h" 3
char * strcpy (char *, const char *) ;
size_t  strcspn (const char *__s1, const char *__s2) ;
char * strerror (int) ;
size_t  strlen (const char *__s) ;
char * strncat (char *, const char *, size_t) ;
int  strncmp (const char *__s1, const char *__s2, size_t) ;
char * strncpy (char *, const char *, size_t) ;
char * strpbrk (const char *, const char *) ;
char * strrchr (const char *, int) ;
size_t  strspn (const char *__s1, const char *__s2) ;
char * strstr (const char *, const char *) ;
# 54 "string.h" 3
char * strtok_r (char *, const char *, char **) ;

int  bcmp (const void *, const void *, size_t) ;
void  bcopy (const void *, void *, size_t) ;
void  bzero (void *, size_t) ;
int  ffs (int) ;
char * index (const char *, int) ;
void *   memccpy ( void * , const void * , int, size_t) ;
void *   mempcpy ( void * , const void * , size_t) ;
void *   memmem (const void * , size_t, const void * , size_t) ;
char * rindex (const char *, int) ;
char * stpcpy (char *, const char *) ;
char * stpncpy (char *, const char *, size_t) ;
int  strcasecmp (const char *, const char *) ;
char * strcasestr (const char *, const char *) ;
char * strdup (const char *) ;
char * strndup (const char *, size_t) ;
char * strerror_r (int, char *, size_t) ;
size_t  strlcat (char *, const char *, size_t) ;
size_t  strlcpy (char *, const char *, size_t) ;
int  strncasecmp (const char *, const char *, size_t) ;
size_t  strnlen (const char *, size_t) ;
char * strsep (char **, const char *) ;
char * strlwr (char *) ;
char * strupr (char *) ;
# 102 "string.h" 3
# 1 "sys/string.h" 1 3
# 103 "string.h" 2 3

}
# 5 "string.h" 2 3
# 1 "safe/string.h" 1 3
# 4 "safe/string.h" 3
# 1 "string.h" 1 3
# 5 "safe/string.h" 2 3


char * alias _safe_memchr(const char * alias s, int c, size_t n);
inline int _safe_memcmp(const char (& alias s1)[n], const char (& alias s2)[n], size_t n) {
  return memcmp(s1, s2, n);
}

inline char * alias _safe_memmove(char * alias s1, const char (& alias s2)[n], size_t n) {
  if (__builtin_array_bound(s1) < n)
    __builtin_trap();
  memmove(s1, s2, n);
  return s1;
}
inline char * alias _safe_memset(char * alias s, int c, size_t n) {
  if (__builtin_array_bound(s) < n)
    __builtin_trap();
  memset(s, c, n);
  return s;
}
char * alias _safe_strcat(char * alias s1, const char s2[]);
char * alias _safe_strchr(const char * alias s, int c);
int _safe_strcmp(const char (& alias s1)[], const char (& alias s2)[]);
char * alias _safe_strcpy(char * alias s1, const char s2[]);
size_t _safe_strcspn(const char (& alias s1)[], const char (& alias s2)[]);
char * alias _safe_strerror(int errnum);
size_t _safe_strlen(const char s[]);
char * alias _safe_strncat(char * alias s1, const char s2[], size_t n);
int _safe_strncmp(const char (& alias s1)[], const char (& alias s2)[], size_t n);
char * alias _safe_strncpy(char * alias s1, const char s2[], size_t n);
char * alias _safe_strpbrk(const char * alias s1, const char s2[]);
char * alias _safe_strrchr(const char * alias s, int c);
size_t _safe_strspn(const char (& alias s1)[], const char s2[]);
char * alias _safe_strstr(const char * alias s1, const char s2[]);


size_t _safe_strnlen(const char s[], size_t n);
# 6 "string.h" 2 3
# 16 "../src/protocol.xc" 2
# 1 "ethernet_config.h" 1
# 11 "ethernet_config.h"
static const unsigned char IP_P1_NODE_1[4] = {192, 168, 101, 80};
static const unsigned char IP_P2_NODE_1[4] = {192, 168, 101, 81};

static const unsigned char IP_P1_NODE_2[4] = {192, 168, 101, 82};
static const unsigned char IP_P2_NODE_2[4] = {192, 168, 101, 83};

static const unsigned char IP_P1_NODE_3[4] = {192, 168, 101, 84};
static const unsigned char IP_P2_NODE_3[4] = {192, 168, 101, 85};

static const unsigned char IP_P1_NODE_4[4] = {192, 168, 101, 86};
static const unsigned char IP_P2_NODE_4[4] = {192, 168, 101, 87};

static const unsigned char IP_P1_NODE_5[4] = {192, 168, 101, 88};
static const unsigned char IP_P2_NODE_5[4] = {192, 168, 101, 89};

static const unsigned char IP_P1_NODE_6[4] = {192, 168, 101, 90};
static const unsigned char IP_P2_NODE_6[4] = {192, 168, 101, 91};

static const unsigned char IP_P1_NODE_7[4] = {192, 168, 101, 92};
static const unsigned char IP_P2_NODE_7[4] = {192, 168, 101, 93};




static const unsigned char MAC_P1_NODE_1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x80};
static const unsigned char MAC_P2_NODE_1[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x81};

static const unsigned char MAC_P1_NODE_2[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x82};
static const unsigned char MAC_P2_NODE_2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x83};

static const unsigned char MAC_P1_NODE_3[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x84};
static const unsigned char MAC_P2_NODE_3[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x85};

static const unsigned char MAC_P1_NODE_4[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x86};
static const unsigned char MAC_P2_NODE_4[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x87};

static const unsigned char MAC_P1_NODE_5[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x88};
static const unsigned char MAC_P2_NODE_5[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x89};

static const unsigned char MAC_P1_NODE_6[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x90};
static const unsigned char MAC_P2_NODE_6[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x91};

static const unsigned char MAC_P1_NODE_7[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x92};
static const unsigned char MAC_P2_NODE_7[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x93};
# 17 "../src/protocol.xc" 2
# 18 "../src/protocol.xc"
# 1 "protocol.h" 1
# 15 "protocol.h"
interface if_led
{
    int msg(char led_cmd, char led_num);
};

interface if_addr
{
    void msg(char address[], int reply);
};

void protocol(chanend dataFromP1, chanend dataFromP2, client interface if_led led, client interface if_addr addr);
void send(chanend dataToP1, chanend dataToP2, server interface if_addr addr);
# 19 "../src/protocol.xc" 2
# 30 "../src/protocol.xc"
void filter(char data[], int nBytes, client interface if_led led, client interface if_addr addr)
{
    int reply;

    if (isForMe(data,  (MAC_P1_NODE_2 ) ) && isSNCN(data))
    {

        if (data[ 14 ] != 0x0)
        {

            reply = led.msg(data[ 14 ], data[ 14 +1]);

            addr.msg(data, reply);
        }
    }
}
# 52 "../src/protocol.xc"
void make_packet(char data[], char reply)
{
    char txbuffer[ 60 ];

    _safe_memset((char *)txbuffer, 0, 60 ) ;


    __builtin_memcpy_xc((txbuffer + 6 ), (data + 0 ), 6) ;
    __builtin_memcpy_xc((txbuffer + 0 ), (data + 6 ), 6) ;


    txbuffer[ 12 ] = data[ 12 ];
    txbuffer[ 12  +1] = data[ 12  +1];

    txbuffer[ 14 ] = reply;

    __builtin_memcpy_xc(data, txbuffer, 60 ) ;
}
# 77 "../src/protocol.xc"
void send(chanend dataToP1, chanend dataToP2, server interface if_addr addr)
{
    unsigned int txbuffer[ 60 ];

    while (1)
    {
        select
        {
            case addr.msg(char address[], int reply):
                __builtin_memcpy_xc(txbuffer, address, 14) ;

                make_packet((txbuffer, char[]), reply);
                break;
        }

        passFrameToHub(dataToP1, (txbuffer, char[]),  60 );
        passFrameToHub(dataToP2, (txbuffer, char[]),  60 );
    }
}
# 104 "../src/protocol.xc"
void protocol(chanend dataFromP1, chanend dataFromP2, client interface if_led led, client interface if_addr addr)
{
    int nbytes;
    unsigned rxbuffer[400];

    while(1)
    {
       select
       {
           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
                           break;
       }

       filter((rxbuffer, char[]), nbytes, led, addr);

    }
}
