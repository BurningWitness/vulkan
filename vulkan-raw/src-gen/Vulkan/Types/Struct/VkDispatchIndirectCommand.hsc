{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDispatchIndirectCommand where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDispatchIndirectCommand" #-} VkDispatchIndirectCommand =
       VkDispatchIndirectCommand
         { x :: #{type uint32_t}
         , y :: #{type uint32_t}
         , z :: #{type uint32_t}
         }

instance Storable VkDispatchIndirectCommand where
  sizeOf    _ = #{size      VkDispatchIndirectCommand}
  alignment _ = #{alignment VkDispatchIndirectCommand}

  peek ptr = 
    VkDispatchIndirectCommand
       <$> peek (Foreign.Storable.Offset.offset @"x" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"y" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"z" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val
    pokeField @"z" ptr val

instance Offset "x" VkDispatchIndirectCommand where
  rawOffset = #{offset VkDispatchIndirectCommand, x}

instance Offset "y" VkDispatchIndirectCommand where
  rawOffset = #{offset VkDispatchIndirectCommand, y}

instance Offset "z" VkDispatchIndirectCommand where
  rawOffset = #{offset VkDispatchIndirectCommand, z}