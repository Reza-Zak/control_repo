class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.lab.local':}
  dockeragent::node {'db.lab.local':}
}  
