{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetVariableDescriptorCountAllocateInfoEXT" #-} VkDescriptorSetVariableDescriptorCountAllocateInfoEXT =
       VkDescriptorSetVariableDescriptorCountAllocateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorSetCount :: #{type uint32_t}
         , pDescriptorCounts :: Ptr #{type uint32_t}
         }

instance Storable VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where
  sizeOf    _ = #{size      VkDescriptorSetVariableDescriptorCountAllocateInfoEXT}
  alignment _ = #{alignment VkDescriptorSetVariableDescriptorCountAllocateInfoEXT}

  peek ptr = 
    VkDescriptorSetVariableDescriptorCountAllocateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSetCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDescriptorCounts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorSetCount" ptr val
    pokeField @"pDescriptorCounts" ptr val

instance Offset "sType" VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfoEXT, sType}

instance Offset "pNext" VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfoEXT, pNext}

instance Offset "descriptorSetCount" VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfoEXT, descriptorSetCount}

instance Offset "pDescriptorCounts" VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfoEXT, pDescriptorCounts}

#else

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfoEXT where

#endif