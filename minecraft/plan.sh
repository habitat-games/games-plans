pkg_name=minecraft
pkg_origin=games
pkg_version="1.12.2"
pkg_version_hash="886945bfb2b978778c3a0288fd7fab09d315b25f"
pkg_maintainer="Graham Weldon <graham@grahamweldon.com>"
pkg_description="Minecraft dedicated server."
pkg_upstream_url="https://minecraft.net"
pkg_license=("Apache-2.0")
pkg_source="https://launcher.mojang.com/mc/game/${pkg_version}/server/${pkg_version_hash}/server.jar"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="fe1f9274e6dad9191bf6e6e8e36ee6ebc737f373603df0946aafcded0d53167e"
pkg_deps=(core/jre8)
# pkg_build_deps=(core/make core/gcc)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)
# pkg_svc_run="haproxy -f $pkg_svc_config_path/haproxy.conf"
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )
# pkg_exposes=(port ssl-port)
# pkg_binds=(
#   [database]="port host"
# )
# pkg_binds_optional=(
#   [storage]="port host"
# )
# pkg_interpreters=(bin/bash)
# pkg_svc_user="hab"
# pkg_svc_group="$pkg_svc_user"

do_unpack() {
  return 0
}

do_build() {
  mv "${HAB_CACHE_SRC_PATH}/server.jar" .
}

do_install() {
  install -D -m0644 server.jar "${pkg_prefix}/server.jar"
}
