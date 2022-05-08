# ERD
![](erd.png)


# Routes

### Customer
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers 	|
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers	|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:id	|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:id|	

### Category
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories 	|
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories	|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:id	|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:id|	

### Owner
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners 	|
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners	|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:id	|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:id|	




### Order
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders 	|
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders	|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id	|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id|

### Detail
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id/details |
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id/details	|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id/:order_id/details/:detail_id	|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/customers/:customer_id/orders/:order_id/details/:detail_id|

### Food
| Method | Explanation |
|--------|-------------|
| GET|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:category_id/foods 	or <br />https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:owner_id/foods |
| POST| https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:category_id/foods	or <br />https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:owner_id/foods|
| PUT|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:category_id/foods/:food_id	or <br />https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:owner_id/foods/:food_id|
| DELETE|https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/categories/:category_id/foods/:food_id or <br />https://gigih-family-catering-devinwilliam00.gojek22.repl.co/api/v1/owners/:owner_id/foods/:food_id|


