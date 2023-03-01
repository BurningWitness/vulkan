{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorIndexingProperties" #-} VkPhysicalDeviceDescriptorIndexingProperties =
       VkPhysicalDeviceDescriptorIndexingProperties
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

instance Storable VkPhysicalDeviceDescriptorIndexingProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorIndexingProperties}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorIndexingProperties}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingProperties
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

instance Offset "sType" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, pNext}

instance Offset "maxUpdateAfterBindDescriptorsInAllPools" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxUpdateAfterBindDescriptorsInAllPools}

instance Offset "shaderUniformBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, shaderUniformBufferArrayNonUniformIndexingNative}

instance Offset "shaderSampledImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, shaderSampledImageArrayNonUniformIndexingNative}

instance Offset "shaderStorageBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, shaderStorageBufferArrayNonUniformIndexingNative}

instance Offset "shaderStorageImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, shaderStorageImageArrayNonUniformIndexingNative}

instance Offset "shaderInputAttachmentArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, shaderInputAttachmentArrayNonUniformIndexingNative}

instance Offset "robustBufferAccessUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, robustBufferAccessUpdateAfterBind}

instance Offset "quadDivergentImplicitLod" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, quadDivergentImplicitLod}

instance Offset "maxPerStageDescriptorUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindSamplers}

instance Offset "maxPerStageDescriptorUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindUniformBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindStorageBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindSampledImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindStorageImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindInputAttachments}

instance Offset "maxPerStageUpdateAfterBindResources" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageUpdateAfterBindResources}

instance Offset "maxDescriptorSetUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindSamplers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindUniformBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindUniformBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindSampledImages}

instance Offset "maxDescriptorSetUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageImages}

instance Offset "maxDescriptorSetUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindInputAttachments}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingProperties where

#endif