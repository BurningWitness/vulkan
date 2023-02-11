{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetVariableDescriptorCountAllocateInfo" #-} VkDescriptorSetVariableDescriptorCountAllocateInfo =
       VkDescriptorSetVariableDescriptorCountAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorSetCount :: #{type uint32_t}
         , pDescriptorCounts :: Ptr #{type uint32_t}
         }

instance Storable VkDescriptorSetVariableDescriptorCountAllocateInfo where
  sizeOf    _ = #{size      struct VkDescriptorSetVariableDescriptorCountAllocateInfo}
  alignment _ = #{alignment struct VkDescriptorSetVariableDescriptorCountAllocateInfo}

  peek ptr = 
    VkDescriptorSetVariableDescriptorCountAllocateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"descriptorSetCount" ptr)
       <*> peek (offset @"pDescriptorCounts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorSetCount" ptr val
    pokeField @"pDescriptorCounts" ptr val

instance Offset "sType" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset struct VkDescriptorSetVariableDescriptorCountAllocateInfo, sType}

instance Offset "pNext" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset struct VkDescriptorSetVariableDescriptorCountAllocateInfo, pNext}

instance Offset "descriptorSetCount" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset struct VkDescriptorSetVariableDescriptorCountAllocateInfo, descriptorSetCount}

instance Offset "pDescriptorCounts" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset struct VkDescriptorSetVariableDescriptorCountAllocateInfo, pDescriptorCounts}

#else

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfo where

#endif