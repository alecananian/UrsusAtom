# Ursus Atom

A library for manipulating Urbit [atoms and auras](https://urbit.org/docs/tutorials/hoon/atoms-auras-and-simple-cell-types/).

Based on [@dclelland's UrsusAtom CocoaPod](https://github.com/dclelland/UrsusAtom).

## Usage

Ursus Atom grants support for the urbit phonetic base, useful for representing Azimuth points ('ships'):

```swift
let ship = try! PatP(string: "~lanrus-rinfep")
let point = Int(ship) // 328448
```

There is an `Aura` protocol with an associated type `Atom` which can be any `UnsignedInteger` type, but in practice we use `BigUInt` types.

Current implementations:

- `PatP` (`@p`)
- `PatQ` (`@q`)
- `PatUV` (`@uv`)

## Installation

Ursus Atom can be installed using Swift Package Manager by adding this repository's URL to your project's packages:

```
https://github.com/alecananian/UrsusAtom
```

## Other utilities

- [util.js](https://github.com/urbit/urbit/blob/master/pkg/interface/src/lib/util.js)
- [urbit-ob](https://github.com/urbit/urbit-ob)
- [urbit-hob](https://github.com/urbit/urbit-hob)

## Dependencies

- [BigInt](https://github.com/attaswift/BigInt)
- [MurmurHash-Swift](https://github.com/daisuke-t-jp/MurmurHash-Swift)
