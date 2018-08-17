// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'flight.dart';

// This is where destination info should go
List<Flight> getFlights(Category category) {
  const allFlights = <Flight>[
    Flight(
      category: Category.findTrips,
      id: 0,
      isFeatured: true,
      destination: 'Ann Arbor, Michigan',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 1,
      isFeatured: true,
      destination: 'Atlanta, Georgia',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 2,
      isFeatured: false,
      destination: 'Austin, Texas',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 3,
      isFeatured: true,
      destination: 'Birmingham, Michigan',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 4,
      isFeatured: false,
      destination: 'Boulder, Colorado',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 5,
      isFeatured: false,
      destination: 'Cambridge, Massachusetts',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 6,
      isFeatured: false,
      destination: 'Chapel Hill, North Carolina',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 7,
      isFeatured: true,
      destination: 'Chicago, Illinois',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 8,
      isFeatured: true,
      destination: 'Irvine, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 9,
      isFeatured: true,
      destination: 'Kirkland, Washington',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 10,
      isFeatured: false,
      destination: 'Kitchener, Ontario',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 11,
      isFeatured: false,
      destination: 'Los Angeles, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 12,
      isFeatured: false,
      destination: 'Miami, Florida',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 13,
      isFeatured: true,
      destination: 'Montreal, Quebec',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 14,
      isFeatured: true,
      destination: 'Mountain View, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 15,
      isFeatured: true,
      destination: 'New York, New York',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 16,
      isFeatured: true,
      destination: 'Pittsburgh, Pennsylvania',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 17,
      isFeatured: false,
      destination: 'Playa Vista, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 18,
      isFeatured: true,
      destination: 'Reston, Virginia',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 19,
      isFeatured: false,
      destination: 'San Bruno, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 20,
      isFeatured: false,
      destination: 'San Diego, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 21,
      isFeatured: false,
      destination: 'San Francisco, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 22,
      isFeatured: false,
      destination: 'Seattle, Washington',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 23,
      isFeatured: false,
      destination: 'Sunnyvale, California',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 24,
      isFeatured: true,
      destination: 'Toronto, Ontario',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 25,
      isFeatured: false,
      destination: 'Washington DC, USA',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 26,
      isFeatured: false,
      destination: 'Belo Horizonte, Brazil',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 27,
      isFeatured: true,
      destination: 'Bogota, Colombia',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 28,
      isFeatured: true,
      destination: 'Buenos Aires, Argentina',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 29,
      isFeatured: true,
      destination: 'Mexico City, Mexico',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 30,
      isFeatured: true,
      destination: 'Santiago, Chile',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 31,
      isFeatured: false,
      destination: 'Sao Paolo, Brazil',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 32,
      isFeatured: false,
      destination: 'Aarhus, Denmark',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 33,
      isFeatured: true,
      destination: 'Amsterdam, Netherlands',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 34,
      isFeatured: false,
      destination: 'Athens, Greece',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 35,
      isFeatured: false,
      destination: 'Berlin, Germany',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 36,
      isFeatured: false,
      destination: 'Brussels, Belgium',
      layover: false,
    ),
    Flight(
      category: Category.findTrips,
      id: 37,
      isFeatured: true,
      destination: 'Copenhagen, Denmark',
      layover: false,
    ),
  ];
  if (category == Category.findTrips) {
    return allFlights;
  } else {
    return allFlights.where((Flight p) {
      return p.category == category;
    }).toList();
  }
}
