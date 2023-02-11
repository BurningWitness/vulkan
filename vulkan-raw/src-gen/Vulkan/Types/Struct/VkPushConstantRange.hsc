{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPushConstantRange where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPushConstantRange" #-} VkPushConstantRange =
       VkPushConstantRange
         { stageFlags :: VkShaderStageFlags -- ^ Which stages use the range
         , offset :: #{type uint32_t} -- ^ Start of the range, in bytes
         , size :: #{type uint32_t} -- ^ Size of the range, in bytes
         }

instance Storable VkPushConstantRange where
  sizeOf    _ = #{size      struct VkPushConstantRange}
  alignment _ = #{alignment struct VkPushConstantRange}

  peek ptr = 
    VkPushConstantRange
       <$> peek (offset @"stageFlags" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"stageFlags" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val

instance Offset "stageFlags" VkPushConstantRange where
  rawOffset = #{offset struct VkPushConstantRange, stageFlags}

instance Offset "offset" VkPushConstantRange where
  rawOffset = #{offset struct VkPushConstantRange, offset}

instance Offset "size" VkPushConstantRange where
  rawOffset = #{offset struct VkPushConstantRange, size}