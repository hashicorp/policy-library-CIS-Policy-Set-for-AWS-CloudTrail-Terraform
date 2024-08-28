mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure/mock-tfplan-v2.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}