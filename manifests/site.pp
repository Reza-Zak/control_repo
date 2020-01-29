node default {
 include role::master_server
}
node 'pag.lab.local' {
  include role::minecraft_server
}
node 'pms.lab.local' {
 include role::master_server
}
