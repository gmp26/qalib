qalib
=====

A commonjs library which generates sixth-form (K12) mathematical fluency exercise questions with answers. The output is in HTML/MathJAX.

This is the library that generates questions and answers, extracted from mathmo in [Apps1](https://github.com/gmp26/Apps1). The original had a large number of global variables which have been eliminated and the library has been converted to the CommonJS standard to handle dependencies between its components using browserify. It will now work in the browser or in a nodeJS environment.

Installation
------------
For browser use, include [dist/qalib.js](https://github.com/gmp26/dist/qalib.js).

For node, add `dist/qalib.js` to your project and then require it.

Use in a NodeJS project
-----------------------
```javascript
  var qalib = require('<path_to>/qalib.js')({});
  ...
```

Use in the browser
------------------
See the [examples](https://github.com/gmp26/examples) folder.
```html
<script src="../dist/qalib.js" type="text/javascript"></script>
<script>
  var qalib = require('qalib')({});

  // Initialise the seed - anything will do.
  // This just corresponds to the seed used in unit tests.
  var seed = "unit-test/C38/1";

  // qalib includes seedrandom for repeatable questions
  Math.seedrandom(seed);
  maker = qalib.topicMakerById('C38');

  for(var i = 1; i < 4; i++) {
    qa = maker();
    alert("question " + i + " = "+qa[0]);
    alert("answer " + i + " = " + qa[1]);
  }
</script>

```

Development
-----------
To install and run unit tests continuously:-

```shell
git clone https://github.com/gmp26/qalib.git
cd qalib
npm install
grunt 
```
