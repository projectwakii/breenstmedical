<!--
  This example requires Tailwind CSS v2.0+ 
  
  This example requires some changes to your config:
  
  ```
  // tailwind.config.js
  module.exports = {
    // ...
    plugins: [
      // ...
      require('@tailwindcss/aspect-ratio'),
    ],
  }
  ```
-->
<template>
  <div class="bg-white">
    <div class="mx-auto py-12 px-4 max-w-7xl sm:px-6 lg:px-8 lg:py-24">
      <div class="space-y-12 lg:grid lg:grid-cols-3 lg:gap-8 lg:space-y-0">
        <div class="space-y-5 sm:space-y-4">
          <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">Our Team</h2>
          <p class="text-xl text-gray-500">Meet our friendly and experienced General Practitioners, Nurses, and Allied Health staff. Here you'll also find a list of special areas of interest.</p>
        </div>
        <div class="lg:col-span-2">
          <ul role="list" class="space-y-12 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-12 sm:space-y-0 lg:gap-x-8">
            <li v-for="person in people" :key="person.name">
              <div class="space-y-4">
                <div class="aspect-w-3 aspect-h-5">
                  <img class="object-cover shadow-lg rounded-lg" :src="person.imageUrl" alt="" />
                </div>
                <div class="text-lg leading-6 font-medium space-y-1">
                  <h3>{{ person.name }}</h3>
                  <p class="text-indigo-600">{{ person.role }}</p>
                </div>
                <div class="text-lg">
                  <p class="text-gray-500">{{ person.bio }}</p>
                </div>

              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
const people = [
  {
    name: 'Dr Harimo Thaker (Harry)',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/drhariom.JPG',
    bio: 'Dr Hariom Thaker (Dr Harry) is a full-time General Practitioner who relocated from Melton to Bendigo. He enjoys all areas of general practice, and his special interests are Preventative medicine & Weight management, Chronic disease management, Children\'s Health, Men\'s Health and Sexual Health. Dr Harry is multi-lingual and is fluent in Gujarati and Hindi.',
    twitterUrl: '#',
    linkedinUrl: '#',
  },

{
    name: 'Dr. Piraneetha Hall',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/drpiraneetha.jpg',
    bio: 'Dr Piranee Hall grew up in Sydney before completing her medical training at the University ofNewcastle in NSW. Since the completion of her training she has worked at The Austin Hospital, The Royal Children\'s Hospital in Melbourne as well as at the Royal Darwin Hospital in the Northern Territory. Her GP training was completed in Brisbane, Queensland becoming a fellow of the Royal Australian College of General Practitioners. Dr Hall has an interest in paediatrics and women\'s health, having completed her Diploma of Obstetrics and Gynaecology. Men\'s health has become an area she is familiar with through the work of her husband, Mr Rohan Hall, who is a local Urological surgeon. When not at work, Piranee is kept busy looking after her two young children.',
    twitterUrl: '#',
    linkedinUrl: '#',
  },

    {
    name: 'Dr Rosamund Stobie',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/drrosamund.jpg',
    bio: 'Rosamund is a female GP who is passionate about saving lives through finding and treating skin cancer. As a mother, she likes children. Also, she was a geriatrics and rehabilitation Doctor for ten years so is good with care of the older person and complex medicine. Rosamund is an accredited Skin Cancer Doctor with The Skin Cancer College of Australasia (MBBS, FRACGP, DRANZCOG, Adv cert in skin cancer surgery).',
    twitterUrl: '#',
    linkedinUrl: '#',
  },

  {
    name: 'Dr Omar Sali',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/omar.jpg',
    bio: 'I am originally from the Philippines, where I obtained my nursing degree in 2008 and then completed my medical degree in 2012. I have worked as a doctor at The Canberra Hospital, Gosford Hospital, Wyong Hospital and Woy Woy Hospital, also in the Central Coast. I’ve also worked in general practice in Wauchope and Tamworth in General Practice. My area of interests includes Chronic Disease Management, Preventive Medicine, Men’s Health and Dermatology, although my scope of practice is not limited to these. I am more than happy to see paediatric patients or even those presenting with issues related to Mental Health and Women’s Health.',
    twitterUrl: '#',
    linkedinUrl: '#',
  },
  {
    name: 'Dr. Mina Kouhzad',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/drmina.jpg',
    bio: 'I am a caring and compassionate doctor who takes pride in being a good listener and trying to share as much medical information as practical to my patients, giving them the opportunity to take part in their treatment.',
    twitterUrl: '#',
    linkedinUrl: '#',
  },
  {
    name: 'Dr Bessie George',
    role: 'General Practitioner (GP)',
    imageUrl:
      '/img/drbessie.jpg',
    bio:'Dr.Bessie George is a fellow of the RACGP and has been working In Australia since 2009. After completing her MBBS in 1997, she gained valuable experience in various fields of Medicine before choosing general practice as her vocation of choice. She has established herself as a competent, caring GP and after a 2 year stint in Melbourne has returned to Bendigo permanently. Special interests: Women’s health, Antenatal care, Contraception, Children’s health, Men’s health, Chronic Disease, Mental Health, Minor skin procedures,Implanon, Preventative Health',
    twitterUrl: '#',
    linkedinUrl: '#',
  },
  // More people...
]

export default {
  setup() {
    return {
      people
    }
  }
}

</script>