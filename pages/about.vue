<template>
  <section>
    <h3>
      My favorites programming languages:
    </h3>
    <ul>
      <li v-for="lang in programingLanguages" :key="lang">
        {{ lang }}
      </li>
    </ul>

    <h3>
      Tools I use the most:
    </h3>
    <ul>
      <li v-for="tool in tools" :key="tool">
        {{ tool }}
      </li>
    </ul>
  </section>
</template>

<script>
export default {
  data() {
    return {
      programingLanguages: ['JavaScript', 'Ruby', 'Swift'],
      tools: ['VSCode', 'XCode', 'git', 'Sketch', 'Abstract', 'Terminal']
    }
  }
}
</script>
