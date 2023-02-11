{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDrawIndexedIndirectCommand where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDrawIndexedIndirectCommand" #-} VkDrawIndexedIndirectCommand =
       VkDrawIndexedIndirectCommand
         { indexCount :: #{type uint32_t}
         , instanceCount :: #{type uint32_t}
         , firstIndex :: #{type uint32_t}
         , vertexOffset :: #{type int32_t}
         , firstInstance :: #{type uint32_t}
         }

instance Storable VkDrawIndexedIndirectCommand where
  sizeOf    _ = #{size      struct VkDrawIndexedIndirectCommand}
  alignment _ = #{alignment struct VkDrawIndexedIndirectCommand}

  peek ptr = 
    VkDrawIndexedIndirectCommand
       <$> peek (offset @"indexCount" ptr)
       <*> peek (offset @"instanceCount" ptr)
       <*> peek (offset @"firstIndex" ptr)
       <*> peek (offset @"vertexOffset" ptr)
       <*> peek (offset @"firstInstance" ptr)

  poke ptr val = do
    pokeField @"indexCount" ptr val
    pokeField @"instanceCount" ptr val
    pokeField @"firstIndex" ptr val
    pokeField @"vertexOffset" ptr val
    pokeField @"firstInstance" ptr val

instance Offset "indexCount" VkDrawIndexedIndirectCommand where
  rawOffset = #{offset struct VkDrawIndexedIndirectCommand, indexCount}

instance Offset "instanceCount" VkDrawIndexedIndirectCommand where
  rawOffset = #{offset struct VkDrawIndexedIndirectCommand, instanceCount}

instance Offset "firstIndex" VkDrawIndexedIndirectCommand where
  rawOffset = #{offset struct VkDrawIndexedIndirectCommand, firstIndex}

instance Offset "vertexOffset" VkDrawIndexedIndirectCommand where
  rawOffset = #{offset struct VkDrawIndexedIndirectCommand, vertexOffset}

instance Offset "firstInstance" VkDrawIndexedIndirectCommand where
  rawOffset = #{offset struct VkDrawIndexedIndirectCommand, firstInstance}