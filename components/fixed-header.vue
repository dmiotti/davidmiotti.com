<template>
  <div class="sticky pin-t bg-black flex justify-between items-center px-5 py-5 w-full z-10">
    <router-link class="link hand no-underline" to="/" aria-label="Home" />
    <h1 v-if="$route.name !== 'index'" class="capitalize text-2xl">
      {{ $route.name }}
    </h1>
    <a class="link github-link" href="https://github.com/dmiotti" rel="noopener" target="_blank" aria-label="GitHub profile">
      <img width="35" src="/GitHub-Mark-Light-120px-plus.png" alt="My GitHub profile">
    </a>
  </div>
</template>

<script>
export default {}
</script>

<style lang="sass" scoped>
.hand
  font-size: 2rem

  &:after
    content: '🖐'

  &:hover
    &:after
      content: '👌'

</style>
