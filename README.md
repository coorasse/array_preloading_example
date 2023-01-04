# Array Preloading Example

Sometimes your initial array of objects is not an ActiveRecord Relation.
You cannot use `preload` on an array of objects and therefore you suffer of N+1 queries.

Imagine we have a Restaurants list. The Restaurants are fetched from a remote Service and therefore we have a simple array of objects.

In our system we have tables for `Table` and `Menu` and they reference the `Restaurant` by `external_restaurant_id`.

This is the setup, there might be a lot of reasons why you cannot cache the restaurants locally of course.

```ruby
