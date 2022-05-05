<script setup>
import TheWelcome from '@/components/TheWelcome.vue'
import { MailIcon } from '@heroicons/vue/solid'

function email() {
  // this is associated with a button at the bottom where users can send an email
  window.location.href = "mailto:wliu@vic.chariot.net.au"
}

</script>

<script>

const people = [
  {
    name: 'Your trusted local doctors.',
    role: 'Breen St Medical Clinic is a fully accredited medical practice, emphasizing the best care for our patients. Our General Practitioners (GP) and healthcare staff provide high quality patient-centered care for the Bendigo and Quarry Hill region.',
    imageUrl:
      '/img/about2.jpg',
    twitterUrl: '#',
    linkedinUrl: '#',
  },
  {
    name: 'Book An Appointment',
    role: 'We are open from Monday to Friday 9:00am - 5:00pm. Call 5444 0689 to book an appointment.',
    imageUrl:
      '/img/appointment.jpg',
    twitterUrl: '#',
    linkedinUrl: '#',
  },
  {
    name: 'Our Services',
    role: 'We are currently offering the AstraZeneca and Pfizer vaccines. Our practice has many services to offer, including: general medical care, skin cancer checks, BP monitoring, glucose testing, antenatal/postnatal care, immunisations, and more.',
    imageUrl:
      '/img/vaccination.jpg',
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
  },
}
</script>

<!-- This is the home page, below the nav bar.--> 

<template>
    <main class="lg:relative">
      <div class="mx-auto max-w-7xl w-full pt-16 pb-20 text-center lg:py-48 lg:text-left">
        <div class="px-4 lg:w-1/2 sm:px-8 xl:pr-16">
          <h1 class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl lg:text-5xl xl:text-6xl">
            <span class="block xl:inline">Breen Street Medical Clinic</span>
            {{ ' ' }}
            <span class="block text-indigo-600 xl:inline"><br>Experienced doctors providing comprehensive healthcare to Bendigo since 2008.</span>
          </h1>
          <p class="mt-3 max-w-md mx-auto text-lg text-gray-500 sm:text-xl md:mt-5 md:max-w-3xl"><b>Opening Hours:</b><br><i>Mon-Fri:</i> 9:00am - 5:00pm<br><i>Sat-Sun:</i> Closed<br><br><b>Phone:</b> (03) 5444 0689<br><b>After Hours:</b> If an emergency, call 000.<br>Otherwise, call (03) 5444 0689.<br><b>Fax: </b>(03) 5444 1315<br></p>
          <div class="mt-10 sm:flex sm:justify-center lg:justify-start">
            <div class="rounded-md shadow">
              <a href="tel:0354440689" class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 md:py-4 md:text-lg md:px-10"> Call to book an appointment </a>
            </div>
            <div class="mt-3 rounded-md shadow sm:mt-0 sm:ml-3">
              <RouterLink to="/jobs" class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-600 bg-white hover:bg-gray-50 md:py-4 md:text-lg md:px-10">Jobs</RouterLink>
            </div>
          </div>
        </div>
      </div>
      <div class="relative w-full h-64 sm:h-72 md:h-96 lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2 lg:h-full">
        <img class="absolute inset-0 w-full h-full object-cover" src="/img/home.jpg" alt="" />
      </div>
    </main>
  <!-- END TEXT AND PICTURE --> 

  <!-- FEATURES --> 
   <div class="bg-white">
    <div class="mx-auto py-12 px-4 max-w-7xl sm:px-6 lg:px-8 lg:py-24">
      <div class="space-y-12">
        <div class="space-y-5 sm:space-y-4 md:max-w-xl lg:max-w-3xl xl:max-w-none">
          <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">Medical care that Bendigo trusts.</h2>
          <p class="text-xl text-gray-500"></p>
        </div>
        <ul role="list" class="space-y-12 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-12 sm:space-y-0 lg:grid-cols-3 lg:gap-x-8">
          <li v-for="person in people" :key="person.name">
            <div class="space-y-4">
              <div class="aspect-w-3 aspect-h-2">
                <img class="object-cover shadow-lg rounded-lg" :src="person.imageUrl" alt="" />
              </div>

              <div class="space-y-2">
                <div class="text-lg leading-6 font-medium space-y-1">
                  <h3>{{ person.name }}</h3>
                  <p class="mt-8 text-lg text-gray-500">{{ person.role }}</p>
                </div>
                <ul role="list" class="flex space-x-5">
                </ul>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <!-- JOBS --> 
    <div class="relative bg-white">
    <div class="lg:absolute lg:inset-0">
      <div class="lg:absolute lg:inset-y-0 lg:left-0 lg:w-1/2">
        <img class="h-56 w-full object-cover lg:absolute lg:h-full" src="/img/flowers.webp" alt="" />
      </div>
    </div>
    <div class="relative pt-12 pb-16 px-4 sm:pt-16 sm:px-6 lg:px-8 lg:max-w-7xl lg:mx-auto lg:grid lg:grid-cols-2">
      <div class="lg:col-start-2 lg:pl-8">
        <div class="text-base max-w-prose mx-auto lg:max-w-lg lg:ml-auto lg:mr-0">
          <h2 class="leading-6 text-indigo-600 font-semibold tracking-wide uppercase">Jobs</h2>
          <h3 class="mt-2 text-3xl leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl">Work With Us</h3>
          <p class="mt-8 text-lg text-gray-500">Interested in working with us?</p>
          <div class="mt-5 prose prose-indigo text-gray-500">
            <p>We are looking for General Practitioners and Allied Health staff. We encourage enthusiastic doctors, both junior and senior, to apply for a position at Breen Street Medical Clinic. Contact us below for more details.</p>
            <br>
            <button @click="email" type="button" class="inline-flex items-center px-6 py-3 border border-transparent shadow-sm text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <MailIcon class="-ml-1 mr-3 h-5 w-5" aria-hidden="true" />
            Email Us
            </button>

          </div>
        </div>
      </div>
    </div>
  </div>




</template>
