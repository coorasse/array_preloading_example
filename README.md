# Array Preloading Example

Sometimes your initial array of objects is not an ActiveRecord Relation.
You cannot use `preload` on an array of objects and therefore you suffer of N+1 queries.

Imagine we have a Restaurants list. The Restaurants are fetched from a remote Service and therefore we have a simple array of objects.

In this simple rails application, we DEMO what has been described in this article on dev.to: https://dev.to/coorasse/preloading-associations-on-an-array-of-objects-4d81
