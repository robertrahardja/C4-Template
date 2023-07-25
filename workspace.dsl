workspace {

    model {
        merchant = person "First Merchant"
        merchant2 = person "Second Merchant"
        softwareSystem = softwareSystem "GW3" {
            webapp = container "Testing" {
                merchant -> this "Uses"
                merchant2 -> this "Also uses"
            }
            container "Database" {
                webapp -> this "Reads from and writes to"
            }
        }
    }

    views {
        systemContext softwareSystem {
            include *
            autolayout lr
        }

        container softwareSystem {
            include *
            autolayout lr
        }

        theme default
    }

}