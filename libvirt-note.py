
def _destroy():
	virt_dom.destroy()

def _undefine_domain():
	virt_dom.undefine()

def _cleanup():
	self._undefine_domain()
	self.unplug_vifs()
	self.firewall_driver.unfilter_instance()
	# delete blocking
	# delete instance dir
	# clean lvm

def destroy():
	# details is shown below

	# virt_dom.destroy()
	# virt_dom.undefine()
	# self.unplug_vifs()
	# self.firewall_driver.unfilter_instance()
	## delete blocking
	## delete instance dir
	## clean lvm
	self._destroy()
	self._cleanup()


def _create_image():
	# create instance dir

def _create_domain():
	domain = self._conn.defineXML():

def _create_domain_and_network():
	# create blocking
	self.plug_vifs()
	self.firewall_driver.setup_basic_filter()
	self._create_domain()

def spawn():
	# details is shown below

	# xml = self.to_xml()
	# self._create_image()
	## create blocking
	# self.plug_vifs()
	# self.firewall_driver.setup_basic_filter()
	# self._create_domain()

	xml = self.to_xml()
	self._create_image()
	self._create_domain_and_network()
