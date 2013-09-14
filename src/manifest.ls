/*
 * mathmo question/answer configuration
 */
module.exports = (config) ->

  (require './problems') config

  m = 
    topicById: (id) -> @topics[id]
    topicTitleById: (id) -> @topics[id][0]
    topicMakerById: (id) -> @topics[id][1]

    groups:
      * title: "Algebraic"
        topicIds:
          * "C11"
            "C7"
            "C9"
            "C1"
            "C30"
            "C13"
            "C17"
            "C35"
            "C36"
            "C37"

      * title: "Curve sketching"
        topicIds:
          * "C24"
            "C25"
            "C26"
            "C270"
            "C27"

      * title: "Geometry"
        topicIds:
          * "C15"
            "C16"
            "C6"
            "C31"
            "C32"
            "C33"
            "C34"
            "C38"
            "C39"

      * title: "Sequences & series"
        topicIds:
          * "C8"
            "C12"
            "C23"
            "C2"

      * title: "Vectors"
        topicIds:
          * "C5"
            "C18"

      * title: "Differentiation"
        topicIds:
          * "C14"
            "C20"
            "C21"
            "C22"
            "C19"

      * title: "Integration"
        topicIds:
          * "C28"
            "C3"
            "C4"

      * title: "Differential equations"
        topicIds:
          * "C29"
          * "F3a"
          ...

      * title: "Further Topics"
        topicIds:
          * "F1"
            "F2"
            #"F3"
            "F4"
            "F5"
            # "F6"
            "F7"
            "F8"
            "F9"
            "F10"
            "F11"
            "F12"
            "F13"

      * title: "Statistics Topics"
        topicIds:
          * "S1"
            "S2"
            "S3"
            "S4"
            "S5"
            "S6"

    topics:
        "C1":
          * "Partial fractions"
            config.makePartial
        "C2":
          * "Binomial theorem"
            config.makeBinomial2
        "C3":
          * "Polynomial integration"
            config.makePolyInt
        "C4":
          * "Trig integration"
            config.makeTrigInt
        "C5":
          * "Scalar products"
            config.makeVector
        "C6":
          * "3D Lines"
            config.makeLines
        "C7":
          * "Inequalities"
            config.makeIneq
        "C8":
          * "Arithmetic progressions"
            config.makeAP
        "C9":
          * "Factor theorem"
            config.makeFactor
        "C10":
          * "Quadratics"
            config.makeQuadratic
        "C11":
          * "Completing the square"
            config.makeComplete
        "C12":
          * "Binomial expansion"
            config.makeBinExp
        "C13":
          * "Logarithms"
            config.makeLog
        "C14":
          * "Stationary points"
            config.makeStationary
        "C15":
          * "Triangles"
            config.makeTriangle
        "C16":
          * "Circles"
            config.makeCircle
        "C17":
          * "Trig equations"
            config.makeSolvingTrig
        "C18":
          * "Vector equations"
            config.makeVectorEq
        "C19":
          * "Implicit differentiation"
            config.makeImplicit
        "C20":
          * "The chain rule"
            config.makeChainRule
        "C21":
          * "The product rule"
            config.makeProductRule
        "C22":
          * "The quotient rule"
            config.makeQuotientRule
        "C23":
          * "Geometric progressions"
            config.makeGP
        "C24":
          * "Modulus function"
            config.makeModulus
        "C25":
          * "Transforms of functions"
            config.makeTransformation
        "C26":
          * "Composition of functions"
            config.makeComposition
        "C27":
          * "Parametric functions"
            config.makeParametric
        "C270":
          * "Implicit functions"
            config.makeImplicitFunction
        "C28":
          * "Integration"
            config.makeIntegration
        "C29":
          * "Differential equations"
            config.makeDE
        "C30":
          * "Powers"
            config.makePowers
        "C31":
          * "Equations of 2D lines"
            config.makeLinesEq
        "C32":
          * "Equations of circles"
            config.makeCircleEq
        "C33":
          * "Parallel and perpendicular lines"
            config.makeLineParPerp
        "C34":
          * "Intersections of circles and lines"
            config.makeCircLineInter
        "C35":
          * "Highest common factors"
            config.makeHCF
        "C36":
          * "Least common multiples"
            config.makeLCM
        "C37":
          * "Integer solutions to equations"
            config.makeDiophantine
        "C38":
          * "Distance between points"
            config.makeDistance
        "C39":
          * "Circle passing through three points"
            config.makeCircumCircle

        "F1":
          * "Complex Arithmetic"
            config.makeCArithmetic
        "F2":
          * "Modulus Argument"
            config.makeCPolar
        #"F3":
        #  "1st order DEs"
        # config.makeDESepHard
        "F3a":
          * "2nd order DEs"
            config.makeDETwoHard
        "F4":
          * "Rank 2 matrices"
            config.makeMatrix2
        "F5":
          * "Taylor Series"
            config.makeTaylor
        "F6":
          * "Polar Coordinates"
            config.makePolarSketch
        "F7":
          * "Rank 3 matrices"
            config.makeMatrix3
        "F8":
          * "Further vectors"
            config.makeFurtherVector
        "F9":
          * "Newton-Raphson"
            config.makeNewtonRaphson
        "F10":
          * "Further inequalities"
            config.makeFurtherIneq
        "F11":
          * "Integration by substitution"
            config.makeSubstInt
        "F12":
          * "Figures of revolution"
            config.makeRevolution
        "F13":
          * "Matrix transformations"
            config.makeMatXforms
        'S1':
          * "Discrete Distributions"
            config.makeDiscreteDistn
        'S2':
          * "Continuous Distributions"
            config.makeContinDistn
        'S3':
          * "Hypothesis Testing"
            config.makeHypTest
        'S4':
          * "Confidence Intervals"
            config.makeConfidInt
        'S5':
          * "Chi Squared"
            config.makeChiSquare
        'S6':
          * "Product Moments"
            config.makeProductMoment

  for k,v of m
    config[k] = v

