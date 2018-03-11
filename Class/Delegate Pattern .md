### Delegation Pattern ###
> iOS App의 Object는 Delegation Pattern - 일종의 위임 패턴- 을 많이 사용함.
> Pattern : 반복해서 나타나는 사건이나 형태를 의미함.
> OOP에서 Design Pattern이란 합성 용어로 사용되는 경우가 대부분임
> Design : Program구성에 대한 Design 즉, 구조적 설계를 의미
> OOP에서 객체관의 관계가 중요한데, 설계에 관한 문제를 해결하기 위한 해법으로 객체들의 관계를 구조화한 사례가 일반화된 것이 Design Pattern.
> 알고르즘처럼 프로그램 코드로 바로 변화노딜 수 있는 형태는 아니지만, 특정한 상황에서 구조적 문제를 해결하는 방식을 설명해 줌.
> 
>  * Factory Pattern
>  * Observer Pattern
>  * Decorator Pattern
>  * Singleton Pattern
>  * Adaptor Pattern
>  * Iterator Pattern
>  * Delegate Pattern

## Delegate Pattern ##

* OOP에서 하나의 객체가 모든 일을 처리하는 것이 아니라 처리해야 할 일 중 일부를 다른 객체에 넘기는 것을 말함
  
  -> 효율성 관점에서 중요한 역할을 함(기능을 위임할 수 있는 객체가 있다는 것은 그만큼 직접 구현해야 하는 부분이 적다는 뜻, 큰 규모의 프로그램을 빠르게 작성할 수 있음.
  
