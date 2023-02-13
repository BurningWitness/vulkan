{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264FrameSizeEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264FrameSizeEXT" #-} VkVideoEncodeH264FrameSizeEXT =
       VkVideoEncodeH264FrameSizeEXT
         { frameISize :: #{type uint32_t}
         , framePSize :: #{type uint32_t}
         , frameBSize :: #{type uint32_t}
         }

instance Storable VkVideoEncodeH264FrameSizeEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264FrameSizeEXT}
  alignment _ = #{alignment VkVideoEncodeH264FrameSizeEXT}

  peek ptr = 
    VkVideoEncodeH264FrameSizeEXT
       <$> peek (offset @"frameISize" ptr)
       <*> peek (offset @"framePSize" ptr)
       <*> peek (offset @"frameBSize" ptr)

  poke ptr val = do
    pokeField @"frameISize" ptr val
    pokeField @"framePSize" ptr val
    pokeField @"frameBSize" ptr val

instance Offset "frameISize" VkVideoEncodeH264FrameSizeEXT where
  rawOffset = #{offset VkVideoEncodeH264FrameSizeEXT, frameISize}

instance Offset "framePSize" VkVideoEncodeH264FrameSizeEXT where
  rawOffset = #{offset VkVideoEncodeH264FrameSizeEXT, framePSize}

instance Offset "frameBSize" VkVideoEncodeH264FrameSizeEXT where
  rawOffset = #{offset VkVideoEncodeH264FrameSizeEXT, frameBSize}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264FrameSizeEXT where

#endif