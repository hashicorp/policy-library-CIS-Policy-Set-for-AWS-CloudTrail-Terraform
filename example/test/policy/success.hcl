mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success/mock-tfplan-v2.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}