{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBufferCopy where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCopy" #-} VkBufferCopy =
       VkBufferCopy
         { srcOffset :: VkDeviceSize -- ^ Specified in bytes
         , dstOffset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkBufferCopy where
  sizeOf    _ = #{size      struct VkBufferCopy}
  alignment _ = #{alignment struct VkBufferCopy}

  peek ptr = 
    VkBufferCopy
       <$> peek (offset @"srcOffset" ptr)
       <*> peek (offset @"dstOffset" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"srcOffset" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"size" ptr val

instance Offset "srcOffset" VkBufferCopy where
  rawOffset = #{offset struct VkBufferCopy, srcOffset}

instance Offset "dstOffset" VkBufferCopy where
  rawOffset = #{offset struct VkBufferCopy, dstOffset}

instance Offset "size" VkBufferCopy where
  rawOffset = #{offset struct VkBufferCopy, size}