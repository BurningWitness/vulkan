{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_hdr_metadata

module Vulkan.Types.Struct.VkXYColorEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkXYColorEXT" #-} VkXYColorEXT =
       VkXYColorEXT
         { x :: #{type float}
         , y :: #{type float}
         }

instance Storable VkXYColorEXT where
  sizeOf    _ = #{size      struct VkXYColorEXT}
  alignment _ = #{alignment struct VkXYColorEXT}

  peek ptr = 
    VkXYColorEXT
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val

instance Offset "x" VkXYColorEXT where
  rawOffset = #{offset struct VkXYColorEXT, x}

instance Offset "y" VkXYColorEXT where
  rawOffset = #{offset struct VkXYColorEXT, y}

#else

module Vulkan.Types.Struct.VkXYColorEXT where

#endif