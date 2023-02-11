{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDrawIndirectCommand where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDrawIndirectCommand" #-} VkDrawIndirectCommand =
       VkDrawIndirectCommand
         { vertexCount :: #{type uint32_t}
         , instanceCount :: #{type uint32_t}
         , firstVertex :: #{type uint32_t}
         , firstInstance :: #{type uint32_t}
         }

instance Storable VkDrawIndirectCommand where
  sizeOf    _ = #{size      struct VkDrawIndirectCommand}
  alignment _ = #{alignment struct VkDrawIndirectCommand}

  peek ptr = 
    VkDrawIndirectCommand
       <$> peek (offset @"vertexCount" ptr)
       <*> peek (offset @"instanceCount" ptr)
       <*> peek (offset @"firstVertex" ptr)
       <*> peek (offset @"firstInstance" ptr)

  poke ptr val = do
    pokeField @"vertexCount" ptr val
    pokeField @"instanceCount" ptr val
    pokeField @"firstVertex" ptr val
    pokeField @"firstInstance" ptr val

instance Offset "vertexCount" VkDrawIndirectCommand where
  rawOffset = #{offset struct VkDrawIndirectCommand, vertexCount}

instance Offset "instanceCount" VkDrawIndirectCommand where
  rawOffset = #{offset struct VkDrawIndirectCommand, instanceCount}

instance Offset "firstVertex" VkDrawIndirectCommand where
  rawOffset = #{offset struct VkDrawIndirectCommand, firstVertex}

instance Offset "firstInstance" VkDrawIndirectCommand where
  rawOffset = #{offset struct VkDrawIndirectCommand, firstInstance}