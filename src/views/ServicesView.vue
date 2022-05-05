
<script>
import { CheckIcon, NewspaperIcon, PhoneIcon, SupportIcon } from '@heroicons/vue/outline'

// Features in Hero
const supportLinks = [
  {
    name: 'Book An Appointment',
    href: '#',
    description:
      'Please phone (03) 5444 0689 during business hours for an appointment. We will make every effort to accommodate your preferred time.',
    icon: PhoneIcon,
  },
  {
    name: 'Consultation times',
    href: '#',
    description:
      'If you feel that you may require a long consultation (>15 minutes), please let staff know. They will be happy to book you a double appointment for you.',
    icon: SupportIcon,
  },
  {
    name: 'Any cold or flu symptoms?',
    href: '#',
    description:
      'If you have any cough, sore throat, runny nose, or fevers - you MUST inform us when making an appointment, as we need to take precautions during COVID times to prevent staff and other patients from getting infected.',
    icon: NewspaperIcon,
  },
]

// Features in list
const features = [
  { name: 'General medical care', description: '',},
  { name: 'Insurance and industrial medicals', description: '' },
  { name: 'Echocardiographs, ECGs', description: ''},
  { name: 'Skin checks', description: '' },
  { name: 'Small surgical procedures', description: '' },
  { name: 'Dressings/wound management', description: '' },
  { name: 'Women\'s health', description: '' },
  { name: 'Men\'s health', description: '' },
  { name: 'Diabetes care', description: '' },
  { name: 'Asthma care', description: '' },
  { name: 'Care plans', description: '' },
  { name: 'Spirometry', description: '' },
  { name: 'Pap smears, mammogram referrals', description: '' },
  { name: 'Blood pressure checks', description: '' },
  { name: 'Holter monitoring', description: '' },
  { name: 'Blood glucose testing', description: '' },
  { name: 'Home visits', description: '' },
  { name: 'Residential Aged Care Facility visits', description: '' },
  { name: 'Antenatal and postnatal care', description: '' },
  { name: 'Immunisations', description: 'Including for COVID, pneumococcal, influenza, shingles, pertussis, and more.' },
  { name: 'Travel medicine ', description: '' },
  { name: 'Hearing tests', description: '' },
]

// Logic 
export default {
  components: {
    CheckIcon,
    NewspaperIcon, 
    PhoneIcon, 
    SupportIcon,
  },
  setup() {
    return {
    features,
    supportLinks,
    }
  }

}

</script>

<!-- HERO WITH CARDS-->
<template>
  <div class="bg-white">
    <!-- Header -->
    <div class="relative pb-32 bg-gray-800">
      <div class="absolute inset-0">
        <img class="w-full h-full object-cover" src="https://images.unsplash.com/photo-1525130413817-d45c1d127c42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1920&q=60&&sat=-100" alt="" />
        <div class="absolute inset-0 bg-gray-800 mix-blend-multiply" aria-hidden="true" />
      </div>
      <div class="relative max-w-7xl mx-auto py-24 px-4 sm:py-32 sm:px-6 lg:px-8">
        <h1 class="text-4xl font-extrabold tracking-tight text-white md:text-5xl lg:text-6xl">We are proud to offer a wide range of services to the Bendigo community.</h1>
      </div>
    </div>

    <!-- Overlapping cards -->
    <section class="-mt-32 max-w-7xl mx-auto relative z-10 pb-32 px-4 sm:px-6 lg:px-8" aria-labelledby="contact-heading">
      <h2 class="sr-only" id="contact-heading">Contact us</h2>
      <div class="grid grid-cols-1 gap-y-20 lg:grid-cols-3 lg:gap-y-0 lg:gap-x-8">
        <div v-for="link in supportLinks" :key="link.name" class="flex flex-col bg-white rounded-2xl shadow-xl">
          <div class="flex-1 relative pt-16 px-6 pb-8 md:px-8">
            <div class="absolute top-0 p-5 inline-block bg-indigo-600 rounded-xl shadow-lg transform -translate-y-1/2">
              <component :is="link.icon" class="h-6 w-6 text-white" aria-hidden="true" />
            </div>
            <h3 class="text-xl font-medium text-gray-900">{{ link.name }}</h3>
            <p class="mt-4 text-base text-gray-500">{{ link.description }}</p>
          </div>

        </div>
      </div>
    </section>
  </div>

<!-- LISTS -->
    <!-- Feature List--> 

  <div class="bg-white">
    <div class="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:py-24 lg:px-8">
      <div class="max-w-3xl mx-auto text-center">
        <h2 class="text-3xl font-extrabold text-gray-900">Your health is safe with us.</h2>
        <p class="mt-4 text-lg text-gray-500">We offer a wide depth of medical services, no matter which stage of life you're at.</p>
      </div>
      <dl class="mt-12 space-y-10 sm:space-y-0 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-12 lg:grid-cols-4 lg:gap-x-8">
        <div v-for="feature in features" :key="feature.name" class="relative">
          <dt>
            <CheckIcon class="absolute h-6 w-6 text-green-500" aria-hidden="true" />
            <p class="ml-9 text-lg leading-6 font-medium text-gray-900">{{ feature.name }}</p>
          </dt>
          <dd class="mt-2 ml-9 text-base text-gray-500">
            {{ feature.description }}
          </dd>
        </div>
      </dl>
    </div>
  </div>

    <!-- End Feature --> 
    

</template>
