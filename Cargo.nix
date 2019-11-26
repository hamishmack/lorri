# Generated by carnix 0.10.0: carnix generate-nix --src ../..
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO // rec {
# human-panic-1.0.1

    crates.human_panic."1.0.1" = deps: { features?(features_.human_panic."1.0.1" deps {}) }: buildRustCrate {
      crateName = "human-panic";
      version = "1.0.1";
      description = "Panic messages for humans";
      authors = [ "Yoshua Wuyts <yoshuawuyts@gmail.com>" "Pascal Hertleif <killercup@gmail.com>" "Katharina Fey <kookie@spacekookie.de>" ];
      edition = "2018";
      src = fetchgit {
         url = "https://github.com/rust-cli/human-panic.git";
         rev = "70db948973a746418e3a23434fe48fe45d3c9866";
         sha256 = "0yznxvgxl5nka75p4bh1pf8ab0c3mfqwihp7lcl0vbiv2yli7nkv";
         fetchSubmodules = false;
      };
      dependencies = mapFeatures features ([
        (cratesIO.crates."backtrace"."${deps."human_panic"."1.0.1"."backtrace"}" deps)
        (cratesIO.crates."os_type"."${deps."human_panic"."1.0.1"."os_type"}" deps)
        (cratesIO.crates."serde"."${deps."human_panic"."1.0.1"."serde"}" deps)
        (cratesIO.crates."serde_derive"."${deps."human_panic"."1.0.1"."serde_derive"}" deps)
        (cratesIO.crates."termcolor"."${deps."human_panic"."1.0.1"."termcolor"}" deps)
        (cratesIO.crates."toml"."${deps."human_panic"."1.0.1"."toml"}" deps)
        (cratesIO.crates."uuid"."${deps."human_panic"."1.0.1"."uuid"}" deps)
      ]);
      features = mkFeatures (features."human_panic"."1.0.1" or {});
    };
    features_.human_panic."1.0.1" = deps: f: updateFeatures f (rec {
      backtrace."${deps.human_panic."1.0.1".backtrace}".default = true;
      human_panic."1.0.1".default = (f.human_panic."1.0.1".default or true);
      os_type."${deps.human_panic."1.0.1".os_type}".default = true;
      serde."${deps.human_panic."1.0.1".serde}".default = true;
      serde_derive."${deps.human_panic."1.0.1".serde_derive}".default = true;
      termcolor."${deps.human_panic."1.0.1".termcolor}".default = true;
      toml."${deps.human_panic."1.0.1".toml}".default = true;
      uuid = fold recursiveUpdate {} [
        { "${deps.human_panic."1.0.1".uuid}"."v4" = true; }
        { "${deps.human_panic."1.0.1".uuid}".default = (f.uuid."${deps.human_panic."1.0.1".uuid}".default or false); }
      ];
    }) [
      (cratesIO.features_.backtrace."${deps."human_panic"."1.0.1"."backtrace"}" deps)
      (cratesIO.features_.os_type."${deps."human_panic"."1.0.1"."os_type"}" deps)
      (cratesIO.features_.serde."${deps."human_panic"."1.0.1"."serde"}" deps)
      (cratesIO.features_.serde_derive."${deps."human_panic"."1.0.1"."serde_derive"}" deps)
      (cratesIO.features_.termcolor."${deps."human_panic"."1.0.1"."termcolor"}" deps)
      (cratesIO.features_.toml."${deps."human_panic"."1.0.1"."toml"}" deps)
      (cratesIO.features_.uuid."${deps."human_panic"."1.0.1"."uuid"}" deps)
    ];


# end
# lorri-0.1.0

    crates.lorri."0.1.0" = deps: { features?(features_.lorri."0.1.0" deps {}) }: buildRustCrate {
      crateName = "lorri";
      version = "0.1.0";
      authors = [ "Graham Christensen <graham.christensen@target.com>" ];
      edition = "2018";
      src = exclude [ ".git" "target" ] ./.;
      dependencies = mapFeatures features ([
        (cratesIO.crates."atomicwrites"."${deps."lorri"."0.1.0"."atomicwrites"}" deps)
        (cratesIO.crates."bincode"."${deps."lorri"."0.1.0"."bincode"}" deps)
        (cratesIO.crates."crossbeam_channel"."${deps."lorri"."0.1.0"."crossbeam_channel"}" deps)
        (cratesIO.crates."directories"."${deps."lorri"."0.1.0"."directories"}" deps)
        (crates."human_panic"."${deps."lorri"."0.1.0"."human_panic"}" deps)
        (cratesIO.crates."lazy_static"."${deps."lorri"."0.1.0"."lazy_static"}" deps)
        (cratesIO.crates."md5"."${deps."lorri"."0.1.0"."md5"}" deps)
        (cratesIO.crates."nix"."${deps."lorri"."0.1.0"."nix"}" deps)
        (cratesIO.crates."notify"."${deps."lorri"."0.1.0"."notify"}" deps)
        (cratesIO.crates."proptest"."${deps."lorri"."0.1.0"."proptest"}" deps)
        (cratesIO.crates."regex"."${deps."lorri"."0.1.0"."regex"}" deps)
        (cratesIO.crates."serde"."${deps."lorri"."0.1.0"."serde"}" deps)
        (cratesIO.crates."serde_derive"."${deps."lorri"."0.1.0"."serde_derive"}" deps)
        (cratesIO.crates."serde_json"."${deps."lorri"."0.1.0"."serde_json"}" deps)
        (cratesIO.crates."slog"."${deps."lorri"."0.1.0"."slog"}" deps)
        (cratesIO.crates."slog_async"."${deps."lorri"."0.1.0"."slog_async"}" deps)
        (cratesIO.crates."slog_scope"."${deps."lorri"."0.1.0"."slog_scope"}" deps)
        (cratesIO.crates."slog_term"."${deps."lorri"."0.1.0"."slog_term"}" deps)
        (cratesIO.crates."structopt"."${deps."lorri"."0.1.0"."structopt"}" deps)
        (cratesIO.crates."tempfile"."${deps."lorri"."0.1.0"."tempfile"}" deps)
        (cratesIO.crates."vec1"."${deps."lorri"."0.1.0"."vec1"}" deps)
      ]);
    };
    features_.lorri."0.1.0" = deps: f: updateFeatures f (rec {
      atomicwrites."${deps.lorri."0.1.0".atomicwrites}".default = true;
      bincode."${deps.lorri."0.1.0".bincode}".default = true;
      crossbeam_channel."${deps.lorri."0.1.0".crossbeam_channel}".default = true;
      directories."${deps.lorri."0.1.0".directories}".default = true;
      human_panic."${deps.lorri."0.1.0".human_panic}".default = true;
      lazy_static."${deps.lorri."0.1.0".lazy_static}".default = true;
      lorri."0.1.0".default = (f.lorri."0.1.0".default or true);
      md5."${deps.lorri."0.1.0".md5}".default = true;
      nix."${deps.lorri."0.1.0".nix}".default = true;
      notify."${deps.lorri."0.1.0".notify}".default = true;
      proptest."${deps.lorri."0.1.0".proptest}".default = true;
      regex."${deps.lorri."0.1.0".regex}".default = true;
      serde."${deps.lorri."0.1.0".serde}".default = true;
      serde_derive."${deps.lorri."0.1.0".serde_derive}".default = true;
      serde_json."${deps.lorri."0.1.0".serde_json}".default = true;
      slog."${deps.lorri."0.1.0".slog}".default = true;
      slog_async."${deps.lorri."0.1.0".slog_async}".default = true;
      slog_scope."${deps.lorri."0.1.0".slog_scope}".default = true;
      slog_term."${deps.lorri."0.1.0".slog_term}".default = true;
      structopt."${deps.lorri."0.1.0".structopt}".default = true;
      tempfile."${deps.lorri."0.1.0".tempfile}".default = true;
      vec1."${deps.lorri."0.1.0".vec1}".default = true;
    }) [
      (cratesIO.features_.atomicwrites."${deps."lorri"."0.1.0"."atomicwrites"}" deps)
      (cratesIO.features_.bincode."${deps."lorri"."0.1.0"."bincode"}" deps)
      (cratesIO.features_.crossbeam_channel."${deps."lorri"."0.1.0"."crossbeam_channel"}" deps)
      (cratesIO.features_.directories."${deps."lorri"."0.1.0"."directories"}" deps)
      (features_.human_panic."${deps."lorri"."0.1.0"."human_panic"}" deps)
      (cratesIO.features_.lazy_static."${deps."lorri"."0.1.0"."lazy_static"}" deps)
      (cratesIO.features_.md5."${deps."lorri"."0.1.0"."md5"}" deps)
      (cratesIO.features_.nix."${deps."lorri"."0.1.0"."nix"}" deps)
      (cratesIO.features_.notify."${deps."lorri"."0.1.0"."notify"}" deps)
      (cratesIO.features_.proptest."${deps."lorri"."0.1.0"."proptest"}" deps)
      (cratesIO.features_.regex."${deps."lorri"."0.1.0"."regex"}" deps)
      (cratesIO.features_.serde."${deps."lorri"."0.1.0"."serde"}" deps)
      (cratesIO.features_.serde_derive."${deps."lorri"."0.1.0"."serde_derive"}" deps)
      (cratesIO.features_.serde_json."${deps."lorri"."0.1.0"."serde_json"}" deps)
      (cratesIO.features_.slog."${deps."lorri"."0.1.0"."slog"}" deps)
      (cratesIO.features_.slog_async."${deps."lorri"."0.1.0"."slog_async"}" deps)
      (cratesIO.features_.slog_scope."${deps."lorri"."0.1.0"."slog_scope"}" deps)
      (cratesIO.features_.slog_term."${deps."lorri"."0.1.0"."slog_term"}" deps)
      (cratesIO.features_.structopt."${deps."lorri"."0.1.0"."structopt"}" deps)
      (cratesIO.features_.tempfile."${deps."lorri"."0.1.0"."tempfile"}" deps)
      (cratesIO.features_.vec1."${deps."lorri"."0.1.0"."vec1"}" deps)
    ];


# end

  };

  lorri = crates.crates.lorri."0.1.0" deps;
  __all = [ (lorri {}) ];
  deps.aho_corasick."0.7.6" = {
    memchr = "2.2.1";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.8";
  };
  deps.anymap."0.12.1" = {};
  deps.arc_swap."0.4.4" = {};
  deps.arrayref."0.3.5" = {};
  deps.arrayvec."0.5.1" = {};
  deps.atomicwrites."0.2.5" = {
    tempdir = "0.3.7";
    nix = "0.14.1";
    winapi = "0.3.8";
  };
  deps.atty."0.2.13" = {
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.autocfg."0.1.7" = {};
  deps.backtrace."0.3.40" = {
    backtrace_sys = "0.1.32";
    cfg_if = "0.1.10";
    libc = "0.2.65";
    rustc_demangle = "0.1.16";
  };
  deps.backtrace_sys."0.1.32" = {
    libc = "0.2.65";
    cc = "1.0.47";
  };
  deps.base64."0.10.1" = {
    byteorder = "1.3.2";
  };
  deps.bincode."1.2.0" = {
    byteorder = "1.3.2";
    serde = "1.0.103";
    autocfg = "0.1.7";
  };
  deps.bit_set."0.5.1" = {
    bit_vec = "0.5.1";
  };
  deps.bit_vec."0.5.1" = {};
  deps.bitflags."1.2.1" = {};
  deps.blake2b_simd."0.5.9" = {
    arrayref = "0.3.5";
    arrayvec = "0.5.1";
    constant_time_eq = "0.1.4";
  };
  deps.byteorder."1.3.2" = {};
  deps.c2_chacha."0.2.3" = {
    ppv_lite86 = "0.2.6";
  };
  deps.cc."1.0.47" = {};
  deps.cfg_if."0.1.10" = {};
  deps.chashmap."2.2.2" = {
    owning_ref = "0.3.3";
    parking_lot = "0.4.8";
  };
  deps.chrono."0.4.10" = {
    num_integer = "0.1.41";
    num_traits = "0.2.10";
    time = "0.1.42";
  };
  deps.clap."2.33.0" = {
    atty = "0.2.13";
    bitflags = "1.2.1";
    strsim = "0.8.0";
    textwrap = "0.11.0";
    unicode_width = "0.1.6";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.2.1";
  };
  deps.constant_time_eq."0.1.4" = {};
  deps.crossbeam_channel."0.3.9" = {
    crossbeam_utils = "0.6.6";
  };
  deps.crossbeam_utils."0.6.6" = {
    cfg_if = "0.1.10";
    lazy_static = "1.4.0";
  };
  deps.directories."1.0.2" = {
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.dirs."2.0.2" = {
    cfg_if = "0.1.10";
    dirs_sys = "0.3.4";
  };
  deps.dirs_sys."0.3.4" = {
    cfg_if = "0.1.10";
    redox_users = "0.3.1";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.failure."0.1.6" = {
    backtrace = "0.3.40";
    failure_derive = "0.1.6";
  };
  deps.failure_derive."0.1.6" = {
    proc_macro2 = "1.0.6";
    quote = "1.0.2";
    syn = "1.0.8";
    synstructure = "0.12.3";
  };
  deps.filetime."0.2.8" = {
    cfg_if = "0.1.10";
    redox_syscall = "0.1.56";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.fnv."1.0.6" = {};
  deps.fsevent."0.4.0" = {
    bitflags = "1.2.1";
    fsevent_sys = "2.0.1";
  };
  deps.fsevent_sys."2.0.1" = {
    libc = "0.2.65";
  };
  deps.fuchsia_cprng."0.1.1" = {};
  deps.fuchsia_zircon."0.3.3" = {
    bitflags = "1.2.1";
    fuchsia_zircon_sys = "0.3.3";
  };
  deps.fuchsia_zircon_sys."0.3.3" = {};
  deps.getrandom."0.1.13" = {
    cfg_if = "0.1.10";
    wasi = "0.7.0";
    libc = "0.2.65";
  };
  deps.heck."0.3.1" = {
    unicode_segmentation = "1.6.0";
  };
  deps.human_panic."1.0.1" = {
    backtrace = "0.3.40";
    os_type = "2.2.0";
    serde = "1.0.103";
    serde_derive = "1.0.103";
    termcolor = "1.0.5";
    toml = "0.4.10";
    uuid = "0.7.4";
  };
  deps.inotify."0.7.0" = {
    bitflags = "1.2.1";
    inotify_sys = "0.1.3";
    libc = "0.2.65";
  };
  deps.inotify_sys."0.1.3" = {
    libc = "0.2.65";
  };
  deps.iovec."0.1.4" = {
    libc = "0.2.65";
  };
  deps.itoa."0.4.4" = {};
  deps.kernel32_sys."0.2.2" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
  deps.lazy_static."1.4.0" = {};
  deps.lazycell."1.2.1" = {};
  deps.libc."0.2.65" = {};
  deps.log."0.4.8" = {
    cfg_if = "0.1.10";
  };
  deps.lorri."0.1.0" = {
    atomicwrites = "0.2.5";
    bincode = "1.2.0";
    crossbeam_channel = "0.3.9";
    directories = "1.0.2";
    human_panic = "1.0.1";
    lazy_static = "1.4.0";
    md5 = "0.6.1";
    nix = "0.14.1";
    notify = "5.0.0-pre.1";
    proptest = "0.9.4";
    regex = "1.3.1";
    serde = "1.0.103";
    serde_derive = "1.0.103";
    serde_json = "1.0.42";
    slog = "2.5.2";
    slog_async = "2.3.0";
    slog_scope = "4.3.0";
    slog_term = "2.4.2";
    structopt = "0.2.18";
    tempfile = "3.1.0";
    vec1 = "1.4.0";
  };
  deps.maybe_uninit."2.0.0" = {};
  deps.md5."0.6.1" = {};
  deps.memchr."2.2.1" = {};
  deps.mio."0.6.19" = {
    iovec = "0.1.4";
    log = "0.4.8";
    net2 = "0.2.33";
    slab = "0.4.2";
    fuchsia_zircon = "0.3.3";
    fuchsia_zircon_sys = "0.3.3";
    libc = "0.2.65";
    kernel32_sys = "0.2.2";
    miow = "0.2.1";
    winapi = "0.2.8";
  };
  deps.mio_extras."2.0.5" = {
    lazycell = "1.2.1";
    log = "0.4.8";
    mio = "0.6.19";
    slab = "0.4.2";
  };
  deps.miow."0.2.1" = {
    kernel32_sys = "0.2.2";
    net2 = "0.2.33";
    winapi = "0.2.8";
    ws2_32_sys = "0.2.1";
  };
  deps.net2."0.2.33" = {
    cfg_if = "0.1.10";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.nix."0.14.1" = {
    bitflags = "1.2.1";
    cfg_if = "0.1.10";
    libc = "0.2.65";
    void = "1.0.2";
  };
  deps.notify."5.0.0-pre.1" = {
    anymap = "0.12.1";
    bitflags = "1.2.1";
    chashmap = "2.2.2";
    crossbeam_channel = "0.3.9";
    filetime = "0.2.8";
    libc = "0.2.65";
    walkdir = "2.2.9";
    inotify = "0.7.0";
    mio = "0.6.19";
    mio_extras = "2.0.5";
    fsevent = "0.4.0";
    fsevent_sys = "2.0.1";
    kernel32_sys = "0.2.2";
    winapi = "0.3.8";
  };
  deps.num_integer."0.1.41" = {
    num_traits = "0.2.10";
    autocfg = "0.1.7";
  };
  deps.num_traits."0.2.10" = {
    autocfg = "0.1.7";
  };
  deps.os_type."2.2.0" = {
    regex = "1.3.1";
  };
  deps.owning_ref."0.3.3" = {
    stable_deref_trait = "1.1.1";
  };
  deps.parking_lot."0.4.8" = {
    owning_ref = "0.3.3";
    parking_lot_core = "0.2.14";
  };
  deps.parking_lot_core."0.2.14" = {
    rand = "0.4.6";
    smallvec = "0.6.13";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.ppv_lite86."0.2.6" = {};
  deps.proc_macro2."0.4.30" = {
    unicode_xid = "0.1.0";
  };
  deps.proc_macro2."1.0.6" = {
    unicode_xid = "0.2.0";
  };
  deps.proptest."0.9.4" = {
    bit_set = "0.5.1";
    bitflags = "1.2.1";
    byteorder = "1.3.2";
    lazy_static = "1.4.0";
    num_traits = "0.2.10";
    quick_error = "1.2.2";
    rand = "0.6.5";
    rand_chacha = "0.1.1";
    rand_xorshift = "0.1.1";
    regex_syntax = "0.6.12";
    rusty_fork = "0.2.2";
    tempfile = "3.1.0";
  };
  deps.quick_error."1.2.2" = {};
  deps.quote."0.6.13" = {
    proc_macro2 = "0.4.30";
  };
  deps.quote."1.0.2" = {
    proc_macro2 = "1.0.6";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.rand."0.6.5" = {
    rand_chacha = "0.1.1";
    rand_core = "0.4.2";
    rand_hc = "0.1.0";
    rand_isaac = "0.1.1";
    rand_jitter = "0.1.4";
    rand_os = "0.1.3";
    rand_pcg = "0.1.2";
    rand_xorshift = "0.1.1";
    autocfg = "0.1.7";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.rand."0.7.2" = {
    rand_core = "0.5.1";
    rand_chacha = "0.2.1";
    rand_hc = "0.2.0";
    libc = "0.2.65";
  };
  deps.rand_chacha."0.1.1" = {
    rand_core = "0.3.1";
    autocfg = "0.1.7";
  };
  deps.rand_chacha."0.2.1" = {
    c2_chacha = "0.2.3";
    rand_core = "0.5.1";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.2";
  };
  deps.rand_core."0.4.2" = {};
  deps.rand_core."0.5.1" = {
    getrandom = "0.1.13";
  };
  deps.rand_hc."0.1.0" = {
    rand_core = "0.3.1";
  };
  deps.rand_hc."0.2.0" = {
    rand_core = "0.5.1";
  };
  deps.rand_isaac."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rand_jitter."0.1.4" = {
    rand_core = "0.4.2";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.rand_os."0.1.3" = {
    rand_core = "0.4.2";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.rand_pcg."0.1.2" = {
    rand_core = "0.4.2";
    autocfg = "0.1.7";
  };
  deps.rand_xorshift."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.56" = {};
  deps.redox_users."0.3.1" = {
    failure = "0.1.6";
    rand_os = "0.1.3";
    redox_syscall = "0.1.56";
    rust_argon2 = "0.5.1";
  };
  deps.regex."1.3.1" = {
    aho_corasick = "0.7.6";
    memchr = "2.2.1";
    regex_syntax = "0.6.12";
    thread_local = "0.3.6";
  };
  deps.regex_syntax."0.6.12" = {};
  deps.remove_dir_all."0.5.2" = {
    winapi = "0.3.8";
  };
  deps.rust_argon2."0.5.1" = {
    base64 = "0.10.1";
    blake2b_simd = "0.5.9";
    crossbeam_utils = "0.6.6";
  };
  deps.rustc_demangle."0.1.16" = {};
  deps.rusty_fork."0.2.2" = {
    fnv = "1.0.6";
    quick_error = "1.2.2";
    tempfile = "3.1.0";
    wait_timeout = "0.2.0";
  };
  deps.ryu."1.0.2" = {};
  deps.same_file."1.0.5" = {
    winapi_util = "0.1.2";
  };
  deps.serde."1.0.103" = {};
  deps.serde_derive."1.0.103" = {
    proc_macro2 = "1.0.6";
    quote = "1.0.2";
    syn = "1.0.8";
  };
  deps.serde_json."1.0.42" = {
    itoa = "0.4.4";
    ryu = "1.0.2";
    serde = "1.0.103";
  };
  deps.slab."0.4.2" = {};
  deps.slog."2.5.2" = {};
  deps.slog_async."2.3.0" = {
    slog = "2.5.2";
    take_mut = "0.2.2";
    thread_local = "0.3.6";
  };
  deps.slog_scope."4.3.0" = {
    arc_swap = "0.4.4";
    lazy_static = "1.4.0";
    slog = "2.5.2";
  };
  deps.slog_term."2.4.2" = {
    atty = "0.2.13";
    chrono = "0.4.10";
    slog = "2.5.2";
    term = "0.6.1";
    thread_local = "0.3.6";
  };
  deps.smallvec."0.6.13" = {
    maybe_uninit = "2.0.0";
  };
  deps.stable_deref_trait."1.1.1" = {};
  deps.strsim."0.8.0" = {};
  deps.structopt."0.2.18" = {
    clap = "2.33.0";
    structopt_derive = "0.2.18";
  };
  deps.structopt_derive."0.2.18" = {
    heck = "0.3.1";
    proc_macro2 = "0.4.30";
    quote = "0.6.13";
    syn = "0.15.44";
  };
  deps.syn."0.15.44" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.13";
    unicode_xid = "0.1.0";
  };
  deps.syn."1.0.8" = {
    proc_macro2 = "1.0.6";
    quote = "1.0.2";
    unicode_xid = "0.2.0";
  };
  deps.synstructure."0.12.3" = {
    proc_macro2 = "1.0.6";
    quote = "1.0.2";
    syn = "1.0.8";
    unicode_xid = "0.2.0";
  };
  deps.take_mut."0.2.2" = {};
  deps.tempdir."0.3.7" = {
    rand = "0.4.6";
    remove_dir_all = "0.5.2";
  };
  deps.tempfile."3.1.0" = {
    cfg_if = "0.1.10";
    rand = "0.7.2";
    remove_dir_all = "0.5.2";
    redox_syscall = "0.1.56";
    libc = "0.2.65";
    winapi = "0.3.8";
  };
  deps.term."0.6.1" = {
    dirs = "2.0.2";
    winapi = "0.3.8";
  };
  deps.termcolor."1.0.5" = {
    wincolor = "1.0.2";
  };
  deps.textwrap."0.11.0" = {
    unicode_width = "0.1.6";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.4.0";
  };
  deps.time."0.1.42" = {
    libc = "0.2.65";
    redox_syscall = "0.1.56";
    winapi = "0.3.8";
  };
  deps.toml."0.4.10" = {
    serde = "1.0.103";
  };
  deps.unicode_segmentation."1.6.0" = {};
  deps.unicode_width."0.1.6" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.unicode_xid."0.2.0" = {};
  deps.uuid."0.7.4" = {
    rand = "0.6.5";
  };
  deps.vec1."1.4.0" = {};
  deps.vec_map."0.8.1" = {};
  deps.void."1.0.2" = {};
  deps.wait_timeout."0.2.0" = {
    libc = "0.2.65";
  };
  deps.walkdir."2.2.9" = {
    same_file = "1.0.5";
    winapi = "0.3.8";
    winapi_util = "0.1.2";
  };
  deps.wasi."0.7.0" = {};
  deps.winapi."0.2.8" = {};
  deps.winapi."0.3.8" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_build."0.1.1" = {};
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_util."0.1.2" = {
    winapi = "0.3.8";
  };
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.wincolor."1.0.2" = {
    winapi = "0.3.8";
    winapi_util = "0.1.2";
  };
  deps.ws2_32_sys."0.2.1" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
}
