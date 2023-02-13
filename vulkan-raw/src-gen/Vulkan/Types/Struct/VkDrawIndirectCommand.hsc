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
  sizeOf    _ = #{size      VkDrawIndirectCommand}
  alignment _ = #{alignment VkDrawIndirectCommand}

  peek ptr = 
    VkDrawIndirectCommand
       <$> peek (Foreign.Storable.Offset.offset @"vertexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"instanceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"firstVertex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"firstInstance" ptr)

  poke ptr val = do
    pokeField @"vertexCount" ptr val
    pokeField @"instanceCount" ptr val
    pokeField @"firstVertex" ptr val
    pokeField @"firstInstance" ptr val

instance Offset "vertexCount" VkDrawIndirectCommand where
  rawOffset = #{offset VkDrawIndirectCommand, vertexCount}

instance Offset "instanceCount" VkDrawIndirectCommand where
  rawOffset = #{offset VkDrawIndirectCommand, instanceCount}

instance Offset "firstVertex" VkDrawIndirectCommand where
  rawOffset = #{offset VkDrawIndirectCommand, firstVertex}

instance Offset "firstInstance" VkDrawIndirectCommand where
  rawOffset = #{offset VkDrawIndirectCommand, firstInstance}