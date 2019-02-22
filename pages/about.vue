<template>
  <section class="container mx-auto">
    <ul class="flex flex-col items-center justify-center list-reset">
      <li v-for="concern in concerns" :key="concern" class="font-black text-xl md:text-5xl my-1">
        {{ concern }}
      </li>
    </ul>
    
    <ul class="flex flex-col items-center justify-center list-reset">
      <li v-for="lang in programingLanguages" :key="lang" class="font-black text-xl md:text-5xl my-1">
        {{ lang }}
      </li>
    </ul>

    <ul class="flex flex-col items-center justify-center list-reset">
      <li v-for="tool in tools" :key="tool" class="font-black text-xl md:text-5xl my-1">
        {{ tool }}
      </li>
    </ul>

    <img src="/cover.jpg" alt="">
  </section>
</template>

<script>
export default {
  data() {
    return {
      programingLanguages: ['JavaScript', 'Ruby', 'Swift'],
      tools: ['VSCode', 'XCode', 'git', 'Sketch', 'Abstract'],
      concerns: [
        'Accessibility',
        'Semantic markups',
        'CSS/SASS possibilities',
        'UX considerations',
        'UI polish',
        'UX and A11Y focused',
        'Meaningful animations'
      ]
    }
  }
}
</script>
