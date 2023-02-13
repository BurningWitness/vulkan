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
  sizeOf    _ = #{size      VkSampleLocationEXT}
  alignment _ = #{alignment VkSampleLocationEXT}

  peek ptr = 
    VkSampleLocationEXT
       <$> peek (Foreign.Storable.Offset.offset @"x" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"y" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val

instance Offset "x" VkSampleLocationEXT where
  rawOffset = #{offset VkSampleLocationEXT, x}

instance Offset "y" VkSampleLocationEXT where
  rawOffset = #{offset VkSampleLocationEXT, y}

#else

module Vulkan.Types.Struct.VkSampleLocationEXT where

#endif