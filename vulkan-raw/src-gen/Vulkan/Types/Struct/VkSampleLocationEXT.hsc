{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkSampleLocationEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkSampleLocationEXT" #-} VkSampleLocationEXT =
       VkSampleLocationEXT
         { x :: #{type float}
         , y :: #{type float}
         }

instance Storable VkSampleLocationEXT where
  sizeOf    _ = #{size      struct VkSampleLocationEXT}
  alignment _ = #{alignment struct VkSampleLocationEXT}

  peek ptr = 
    VkSampleLocationEXT
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val

instance Offset "x" VkSampleLocationEXT where
  rawOffset = #{offset struct VkSampleLocationEXT, x}

instance Offset "y" VkSampleLocationEXT where
  rawOffset = #{offset struct VkSampleLocationEXT, y}

#else

module Vulkan.Types.Struct.VkSampleLocationEXT where

#endif