<template>
  <section>
    <h3>
      Here what concerns me the most:
    </h3>
    <ul>
      <li v-for="concern in concerns" :key="concern">
        {{ concern }}
      </li>
    </ul>
  </section>
</template>

<script>
export default {
  data() {
    return {
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
