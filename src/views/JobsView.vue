<script setup>
import TheWelcome from '@/components/TheWelcome.vue'
import { MailIcon } from '@heroicons/vue/solid'

function email() {
  // update component state
  window.location.href = "mailto:wliu@vic.chariot.net.au"
}

</script>

<!-- This example requires Tailwind CSS v2.0+ -->

<template>
  <!-- CONTENT --> 
    <div class="relative bg-white">

    <div class="lg:absolute lg:inset-0">
      <div class="lg:absolute lg:inset-y-0 lg:left-0 lg:w-1/2">
        <img class="h-56 w-full object-cover lg:absolute lg:h-full" src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80" alt="" />
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


<script> 
export default {
  setup() {
    return {
    }
  }
}
</script>