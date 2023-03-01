{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorIndexingPropertiesEXT" #-} VkPhysicalDeviceDescriptorIndexingPropertiesEXT =
       VkPhysicalDeviceDescriptorIndexingPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxUpdateAfterBindDescriptorsInAllPools :: #{type uint32_t}
         , shaderUniformBufferArrayNonUniformIndexingNative :: VkBool32
         , shaderSampledImageArrayNonUniformIndexingNative :: VkBool32
         , shaderStorageBufferArrayNonUniformIndexingNative :: VkBool32
         , shaderStorageImageArrayNonUniformIndexingNative :: VkBool32
         , shaderInputAttachmentArrayNonUniformIndexingNative :: VkBool32
         , robustBufferAccessUpdateAfterBind :: VkBool32
         , quadDivergentImplicitLod :: VkBool32
         , maxPerStageDescriptorUpdateAfterBindSamplers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindUniformBuffers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindStorageBuffers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindSampledImages :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindStorageImages :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindInputAttachments :: #{type uint32_t}
         , maxPerStageUpdateAfterBindResources :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindSamplers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindUniformBuffers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindUniformBuffersDynamic :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageBuffers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageBuffersDynamic :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindSampledImages :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageImages :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindInputAttachments :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorIndexingPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorIndexingPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxUpdateAfterBindDescriptorsInAllPools" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSampledImageArrayNonUniformIndexingNative" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageImageArrayNonUniformIndexingNative" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInputAttachmentArrayNonUniformIndexingNative" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustBufferAccessUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"quadDivergentImplicitLod" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindSamplers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindUniformBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindStorageBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindSampledImages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindStorageImages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindInputAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageUpdateAfterBindResources" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindSamplers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindUniformBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindStorageBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindSampledImages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindStorageImages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindInputAttachments" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxUpdateAfterBindDescriptorsInAllPools" ptr val
    pokeField @"shaderUniformBufferArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderSampledImageArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderStorageBufferArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderStorageImageArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderInputAttachmentArrayNonUniformIndexingNative" ptr val
    pokeField @"robustBufferAccessUpdateAfterBind" ptr val
    pokeField @"quadDivergentImplicitLod" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindSamplers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindUniformBuffers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindStorageBuffers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindSampledImages" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindStorageImages" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindInputAttachments" ptr val
    pokeField @"maxPerStageUpdateAfterBindResources" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindSamplers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindUniformBuffers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageBuffers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindSampledImages" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageImages" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindInputAttachments" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, pNext}

instance Offset "maxUpdateAfterBindDescriptorsInAllPools" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxUpdateAfterBindDescriptorsInAllPools}

instance Offset "shaderUniformBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, shaderUniformBufferArrayNonUniformIndexingNative}

instance Offset "shaderSampledImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, shaderSampledImageArrayNonUniformIndexingNative}

instance Offset "shaderStorageBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, shaderStorageBufferArrayNonUniformIndexingNative}

instance Offset "shaderStorageImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, shaderStorageImageArrayNonUniformIndexingNative}

instance Offset "shaderInputAttachmentArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, shaderInputAttachmentArrayNonUniformIndexingNative}

instance Offset "robustBufferAccessUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, robustBufferAccessUpdateAfterBind}

instance Offset "quadDivergentImplicitLod" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, quadDivergentImplicitLod}

instance Offset "maxPerStageDescriptorUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindSamplers}

instance Offset "maxPerStageDescriptorUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindUniformBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindStorageBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindSampledImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindStorageImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageDescriptorUpdateAfterBindInputAttachments}

instance Offset "maxPerStageUpdateAfterBindResources" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxPerStageUpdateAfterBindResources}

instance Offset "maxDescriptorSetUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindSamplers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindUniformBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindUniformBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindStorageBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindStorageBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindSampledImages}

instance Offset "maxDescriptorSetUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindStorageImages}

instance Offset "maxDescriptorSetUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingPropertiesEXT, maxDescriptorSetUpdateAfterBindInputAttachments}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingPropertiesEXT where

#endif