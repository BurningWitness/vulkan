{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkWriteDescriptorSetInlineUniformBlock}
  alignment _ = #{alignment VkWriteDescriptorSetInlineUniformBlock}

  peek ptr = 
    VkWriteDescriptorSetInlineUniformBlock
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "sType" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlock, sType}

instance Offset "pNext" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlock, pNext}

instance Offset "dataSize" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlock, dataSize}

instance Offset "pData" VkWriteDescriptorSetInlineUniformBlock where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlock, pData}

#else

module Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlock where

#endif