{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265FrameSizeEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265FrameSizeEXT" #-} VkVideoEncodeH265FrameSizeEXT =
       VkVideoEncodeH265FrameSizeEXT
         { frameISize :: #{type uint32_t}
         , framePSize :: #{type uint32_t}
         , frameBSize :: #{type uint32_t}
         }

instance Storable VkVideoEncodeH265FrameSizeEXT where
  sizeOf    _ = #{size      struct VkVideoEncodeH265FrameSizeEXT}
  alignment _ = #{alignment struct VkVideoEncodeH265FrameSizeEXT}

  peek ptr = 
    VkVideoEncodeH265FrameSizeEXT
       <$> peek (offset @"frameISize" ptr)
       <*> peek (offset @"framePSize" ptr)
       <*> peek (offset @"frameBSize" ptr)

  poke ptr val = do
    pokeField @"frameISize" ptr val
    pokeField @"framePSize" ptr val
    pokeField @"frameBSize" ptr val

instance Offset "frameISize" VkVideoEncodeH265FrameSizeEXT where
  rawOffset = #{offset struct VkVideoEncodeH265FrameSizeEXT, frameISize}

instance Offset "framePSize" VkVideoEncodeH265FrameSizeEXT where
  rawOffset = #{offset struct VkVideoEncodeH265FrameSizeEXT, framePSize}

instance Offset "frameBSize" VkVideoEncodeH265FrameSizeEXT where
  rawOffset = #{offset struct VkVideoEncodeH265FrameSizeEXT, frameBSize}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265FrameSizeEXT where

#endif