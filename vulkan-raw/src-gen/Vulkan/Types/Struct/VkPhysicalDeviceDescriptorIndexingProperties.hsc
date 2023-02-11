{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceDescriptorIndexingProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceDescriptorIndexingProperties}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxUpdateAfterBindDescriptorsInAllPools" ptr)
       <*> peek (offset @"shaderUniformBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderSampledImageArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderStorageBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderStorageImageArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"robustBufferAccessUpdateAfterBind" ptr)
       <*> peek (offset @"quadDivergentImplicitLod" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindSamplers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindUniformBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindStorageBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindSampledImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindStorageImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindInputAttachments" ptr)
       <*> peek (offset @"maxPerStageUpdateAfterBindResources" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindSamplers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindUniformBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindSampledImages" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageImages" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindInputAttachments" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, pNext}

instance Offset "maxUpdateAfterBindDescriptorsInAllPools" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxUpdateAfterBindDescriptorsInAllPools}

instance Offset "shaderUniformBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, shaderUniformBufferArrayNonUniformIndexingNative}

instance Offset "shaderSampledImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, shaderSampledImageArrayNonUniformIndexingNative}

instance Offset "shaderStorageBufferArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, shaderStorageBufferArrayNonUniformIndexingNative}

instance Offset "shaderStorageImageArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, shaderStorageImageArrayNonUniformIndexingNative}

instance Offset "shaderInputAttachmentArrayNonUniformIndexingNative" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, shaderInputAttachmentArrayNonUniformIndexingNative}

instance Offset "robustBufferAccessUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, robustBufferAccessUpdateAfterBind}

instance Offset "quadDivergentImplicitLod" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, quadDivergentImplicitLod}

instance Offset "maxPerStageDescriptorUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindSamplers}

instance Offset "maxPerStageDescriptorUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindUniformBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindStorageBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindSampledImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindStorageImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageDescriptorUpdateAfterBindInputAttachments}

instance Offset "maxPerStageUpdateAfterBindResources" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxPerStageUpdateAfterBindResources}

instance Offset "maxDescriptorSetUpdateAfterBindSamplers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindSamplers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindUniformBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindUniformBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffers" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindSampledImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindSampledImages}

instance Offset "maxDescriptorSetUpdateAfterBindStorageImages" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindStorageImages}

instance Offset "maxDescriptorSetUpdateAfterBindInputAttachments" VkPhysicalDeviceDescriptorIndexingProperties where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorIndexingProperties, maxDescriptorSetUpdateAfterBindInputAttachments}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingProperties where

#endif