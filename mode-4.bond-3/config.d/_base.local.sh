#

bonding_mode=4

for i in {0..5}; do
  ifindex=$((${i} + 1))
  configure_ifcfg_bond_map bond$((${i} / 2)) slave=eth${ifindex} mode=${bonding_mode}
done

#configure_vlan_conf

for i in {0..2}; do
 #vlan_if=vlan200${i}
 #configure_ifcfg_vlan_map ${vlan_if} physdev=bond${i}

 #br_master_if=br${i}; br_slave_if=bond${i}
 #map_ifcfg_bridge ${br_master_if} slave=${br_slave_if}
  :
done
