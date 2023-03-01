{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkTraceRaysIndirectCommandKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkTraceRaysIndirectCommandKHR" #-} VkTraceRaysIndirectCommandKHR =
       VkTraceRaysIndirectCommandKHR
         { width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , depth :: #{type uint32_t}
         }

instance Storable VkTraceRaysIndirectCommandKHR where
  sizeOf    _ = #{size      VkTraceRaysIndirectCommandKHR}
  alignment _ = #{alignment VkTraceRaysIndirectCommandKHR}

  peek ptr = 
    VkTraceRaysIndirectCommandKHR
       <$> peek (Foreign.Storable.Offset.offset @"width" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"height" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depth" ptr)

  poke ptr val = do
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"depth" ptr val

instance Offset "width" VkTraceRaysIndirectCommandKHR where
  rawOffset = #{offset VkTraceRaysIndirectCommandKHR, width}

instance Offset "height" VkTraceRaysIndirectCommandKHR where
  rawOffset = #{offset VkTraceRaysIndirectCommandKHR, height}

instance Offset "depth" VkTraceRaysIndirectCommandKHR where
  rawOffset = #{offset VkTraceRaysIndirectCommandKHR, depth}

#else

module Vulkan.Types.Struct.VkTraceRaysIndirectCommandKHR where

#endif