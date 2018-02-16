<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu">
            <li class="<?php echo base_url(uri_string()) == base_url() ? "active " : "" ;?>">
                <a href="<?php echo base_url();?>">
                    <i class="fa fa-book"></i>
                    <span>Knyga</span>
                </a>
            </li>
            <li class="<?php echo base_url(uri_string()) == base_url()."store/order" ? "active " : "" ;?>">
                <a href="<?php echo base_url()."store/order";?>">
                    <i class="fa fa-shopping-cart"></i>
                    <span>Užsakymai</span>
                </a>
            </li>
        </ul>
    </section>
</aside>