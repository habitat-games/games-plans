pkg_name=minecraft
pkg_origin=games
pkg_version="1.12.2"
pkg_version_hash="886945bfb2b978778c3a0288fd7fab09d315b25f"
pkg_maintainer="Graham Weldon <graham@grahamweldon.com>"
pkg_description="Minecraft dedicated server."
pkg_upstream_url="https://minecraft.net"
pkg_license=("Apache-2.0")
pkg_source="https://launcher.mojang.com/mc/game/${pkg_version}/server/${pkg_version_hash}/server.jar"
pkg_shasum="fe1f9274e6dad9191bf6e6e8e36ee6ebc737f373603df0946aafcded0d53167e"
pkg_deps=(core/jre8)
pkg_exports=(
  [port]=properties.server-port
)
pkg_exposes=(port)

do_unpack() {
  return 0
}

do_build() {
  mv "${HAB_CACHE_SRC_PATH}/server.jar" .
}

do_install() {
  install -D -m0644 server.jar "${pkg_prefix}/server.jar"
}
