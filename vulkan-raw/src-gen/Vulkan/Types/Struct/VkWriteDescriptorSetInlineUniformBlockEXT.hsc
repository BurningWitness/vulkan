{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_inline_uniform_block

module Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlockEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkWriteDescriptorSetInlineUniformBlockEXT" #-} VkWriteDescriptorSetInlineUniformBlockEXT =
       VkWriteDescriptorSetInlineUniformBlockEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dataSize :: #{type uint32_t}
         , pData :: Ptr ()
         }

instance Storable VkWriteDescriptorSetInlineUniformBlockEXT where
  sizeOf    _ = #{size      VkWriteDescriptorSetInlineUniformBlockEXT}
  alignment _ = #{alignment VkWriteDescriptorSetInlineUniformBlockEXT}

  peek ptr = 
    VkWriteDescriptorSetInlineUniformBlockEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "sType" VkWriteDescriptorSetInlineUniformBlockEXT where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlockEXT, sType}

instance Offset "pNext" VkWriteDescriptorSetInlineUniformBlockEXT where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlockEXT, pNext}

instance Offset "dataSize" VkWriteDescriptorSetInlineUniformBlockEXT where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlockEXT, dataSize}

instance Offset "pData" VkWriteDescriptorSetInlineUniformBlockEXT where
  rawOffset = #{offset VkWriteDescriptorSetInlineUniformBlockEXT, pData}

#else

module Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlockEXT where

#endif