{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlock where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkWriteDescriptorSetInlineUniformBlock" #-} VkWriteDescriptorSetInlineUniformBlock =
       VkWriteDescriptorSetInlineUniformBlock
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dataSize :: #{type uint32_t}
         , pData :: Ptr ()
         }

instance Storable VkWriteDescriptorSetInlineUniformBlock where
  sizeOf    _ = #{size      struct VkWriteDescriptorSetInlineUniformBlock}
  alignment _ = #{alignment struct VkWriteDescriptorSetInlineUniformBlock}

  peek ptr = 
    VkWriteDescriptorSetInlineUniformBlock
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dataSize" ptr)
       <*> peek (offset @"pData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "sType" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset struct VkWriteDescriptorSetInlineUniformBlock, sType}

instance Offset "pNext" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset struct VkWriteDescriptorSetInlineUniformBlock, pNext}

instance Offset "dataSize" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset struct VkWriteDescriptorSetInlineUniformBlock, dataSize}

instance Offset "pData" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset struct VkWriteDescriptorSetInlineUniformBlock, pData}

#else

module Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlock where

#endif