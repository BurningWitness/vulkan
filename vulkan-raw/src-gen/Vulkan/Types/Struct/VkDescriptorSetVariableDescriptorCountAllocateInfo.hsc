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
  sizeOf    _ = #{size      VkDescriptorSetVariableDescriptorCountAllocateInfo}
  alignment _ = #{alignment VkDescriptorSetVariableDescriptorCountAllocateInfo}

  peek ptr = 
    VkDescriptorSetVariableDescriptorCountAllocateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSetCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDescriptorCounts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorSetCount" ptr val
    pokeField @"pDescriptorCounts" ptr val

instance Offset "sType" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfo, sType}

instance Offset "pNext" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfo, pNext}

instance Offset "descriptorSetCount" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfo, descriptorSetCount}

instance Offset "pDescriptorCounts" VkDescriptorSetVariableDescriptorCountAllocateInfo where
  rawOffset = #{offset VkDescriptorSetVariableDescriptorCountAllocateInfo, pDescriptorCounts}

#else

module Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfo where

#endif