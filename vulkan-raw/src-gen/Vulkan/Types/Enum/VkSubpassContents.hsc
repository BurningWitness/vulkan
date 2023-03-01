{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubpassContents where

import Data.Int



type VkSubpassContents = #{type int}

pattern VK_SUBPASS_CONTENTS_INLINE :: (Eq a, Num a) => a
pattern VK_SUBPASS_CONTENTS_INLINE = 0

pattern VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS :: (Eq a, Num a) => a
pattern VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1