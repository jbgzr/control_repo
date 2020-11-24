class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  host {'web.puppet.vm':
    ensure  => present,
    ip      => '172.18.0.2',
    before  => Host['db.puppet.vm'],
  }
  host {'db.puppet.vm':
    ensure  => present,
    ip      => '172.18.0.3',
    before  => Host['minetest.puppet.vm'],
  }
  host {'minetest.puppet.vm':
    ensure  => present,
    ip      => '172.18.0.4',
  }
}
