{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorIndexingFeaturesEXT" #-} VkPhysicalDeviceDescriptorIndexingFeaturesEXT =
       VkPhysicalDeviceDescriptorIndexingFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderInputAttachmentArrayDynamicIndexing :: VkBool32
         , shaderUniformTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderStorageTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderUniformBufferArrayNonUniformIndexing :: VkBool32
         , shaderSampledImageArrayNonUniformIndexing :: VkBool32
         , shaderStorageBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageImageArrayNonUniformIndexing :: VkBool32
         , shaderInputAttachmentArrayNonUniformIndexing :: VkBool32
         , shaderUniformTexelBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageTexelBufferArrayNonUniformIndexing :: VkBool32
         , descriptorBindingUniformBufferUpdateAfterBind :: VkBool32
         , descriptorBindingSampledImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUniformTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingStorageTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUpdateUnusedWhilePending :: VkBool32
         , descriptorBindingPartiallyBound :: VkBool32
         , descriptorBindingVariableDescriptorCount :: VkBool32
         , runtimeDescriptorArray :: VkBool32
         }

instance Storable VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorIndexingFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorIndexingFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorIndexingFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderSampledImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"descriptorBindingUniformBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingSampledImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUpdateUnusedWhilePending" ptr)
       <*> peek (offset @"descriptorBindingPartiallyBound" ptr)
       <*> peek (offset @"descriptorBindingVariableDescriptorCount" ptr)
       <*> peek (offset @"runtimeDescriptorArray" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderInputAttachmentArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderSampledImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderInputAttachmentArrayNonUniformIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"descriptorBindingUniformBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingSampledImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUpdateUnusedWhilePending" ptr val
    pokeField @"descriptorBindingPartiallyBound" ptr val
    pokeField @"descriptorBindingVariableDescriptorCount" ptr val
    pokeField @"runtimeDescriptorArray" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, pNext}

instance Offset "shaderInputAttachmentArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderInputAttachmentArrayDynamicIndexing}

instance Offset "shaderUniformTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderUniformTexelBufferArrayDynamicIndexing}

instance Offset "shaderStorageTexelBufferArrayDynamicIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderStorageTexelBufferArrayDynamicIndexing}

instance Offset "shaderUniformBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderUniformBufferArrayNonUniformIndexing}

instance Offset "shaderSampledImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderSampledImageArrayNonUniformIndexing}

instance Offset "shaderStorageBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderStorageBufferArrayNonUniformIndexing}

instance Offset "shaderStorageImageArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderStorageImageArrayNonUniformIndexing}

instance Offset "shaderInputAttachmentArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderInputAttachmentArrayNonUniformIndexing}

instance Offset "shaderUniformTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderUniformTexelBufferArrayNonUniformIndexing}

instance Offset "shaderStorageTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, shaderStorageTexelBufferArrayNonUniformIndexing}

instance Offset "descriptorBindingUniformBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingUniformBufferUpdateAfterBind}

instance Offset "descriptorBindingSampledImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingSampledImageUpdateAfterBind}

instance Offset "descriptorBindingStorageImageUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingStorageImageUpdateAfterBind}

instance Offset "descriptorBindingStorageBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingStorageBufferUpdateAfterBind}

instance Offset "descriptorBindingUniformTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingUniformTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingStorageTexelBufferUpdateAfterBind" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingStorageTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingUpdateUnusedWhilePending" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingUpdateUnusedWhilePending}

instance Offset "descriptorBindingPartiallyBound" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingPartiallyBound}

instance Offset "descriptorBindingVariableDescriptorCount" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, descriptorBindingVariableDescriptorCount}

instance Offset "runtimeDescriptorArray" VkPhysicalDeviceDescriptorIndexingFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorIndexingFeaturesEXT, runtimeDescriptorArray}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeaturesEXT where

#endif